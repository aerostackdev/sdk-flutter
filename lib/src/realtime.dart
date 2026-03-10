import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

enum RealtimeStatus { idle, connecting, connected, reconnecting, disconnected }

/// Represents a message returned from the realtime history endpoint.
class HistoryMessage {
  final String id;
  final String roomId;
  final String? userId;
  final String event;
  final Map<String, dynamic> data;
  final DateTime createdAt;

  HistoryMessage({
    required this.id,
    required this.roomId,
    this.userId,
    required this.event,
    required this.data,
    required this.createdAt,
  });

  factory HistoryMessage.fromJson(Map<String, dynamic> json) {
    return HistoryMessage(
      id: json['id'] as String,
      roomId: json['room_id'] as String,
      userId: json['user_id'] as String?,
      event: json['event'] as String,
      data: json['data'] is Map<String, dynamic>
          ? json['data'] as Map<String, dynamic>
          : jsonDecode(json['data'] as String) as Map<String, dynamic>,
      createdAt: DateTime.fromMillisecondsSinceEpoch(json['created_at'] as int),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'roomId': roomId,
        'userId': userId,
        'event': event,
        'data': data,
        'createdAt': createdAt.toIso8601String(),
      };

  @override
  String toString() => 'HistoryMessage(id: $id, event: $event, roomId: $roomId)';
}

class RealtimeSubscription<T> {
  final RealtimeClient _client;
  String topic; // mutable so the subscriptions map can be re-keyed to the server-normalized topic
  final Map<String, dynamic>? filter;
  final StreamController<Map<String, dynamic>> _controller =
      StreamController<Map<String, dynamic>>.broadcast();
  bool _isSubscribed = false;
  int _publishId = 0;

  RealtimeSubscription({
    required RealtimeClient client,
    required this.topic,
    this.filter,
  }) : _client = client;

  Stream<Map<String, dynamic>> get stream => _controller.stream;
  bool get isSubscribed => _isSubscribed;

  void subscribe() {
    if (_isSubscribed) return;
    _client._send({
      'type': 'subscribe',
      'topic': topic,
      'filter': filter,
    });
    _isSubscribed = true;
  }

  void unsubscribe() {
    if (!_isSubscribed) return;
    _client._send({
      'type': 'unsubscribe',
      'topic': topic,
    });
    _isSubscribed = false;
    _client._removeSubscription(topic);
  }

  /// Publish a custom event to this subscription's topic.
  ///
  /// [event] is the custom event name (e.g. 'cursor-move', 'typing').
  /// [data] is the payload to broadcast.
  /// [persist] controls whether the message is stored in history (defaults to false).
  void publish(String event, Map<String, dynamic> data, {bool persist = false}) {
    _publishId++;
    _client._send({
      'type': 'publish',
      'topic': topic,
      'event': event,
      'data': data,
      'persist': persist,
      'id': '$topic:$_publishId',
    });
  }

  /// Track presence state for the current connection.
  ///
  /// [state] is the presence metadata to broadcast (e.g. cursor position, user info).
  void track(Map<String, dynamic> state) {
    _client._send({
      'type': 'track',
      'topic': topic,
      'state': state,
    });
  }

  /// Stop tracking presence for the current connection.
  void untrack() {
    _client._send({
      'type': 'untrack',
      'topic': topic,
    });
  }

  /// Fetch persisted message history for this subscription's topic.
  ///
  /// [limit] controls how many messages to return (max 50 by default).
  /// [before] is an optional cursor — pass the numeric ID of the earliest message
  /// you already have to paginate backwards.
  Future<List<HistoryMessage>> getHistory({int limit = 50, int? before}) async {
    return _client._getHistory(topic, limit: limit, before: before);
  }

  /// @internal
  void emit(Map<String, dynamic> data) {
    if (!_controller.isClosed) {
      _controller.add(data);
    }
  }

  void close() {
    _controller.close();
  }
}

class RealtimeClient {
  late final Uri _wsUri;
  late final Uri _httpBaseUri;
  final String? apiKey;
  final String? token;
  WebSocketChannel? _channel;
  final Map<String, RealtimeSubscription> _subscriptions = {};
  bool _isConnected = false;
  Timer? _heartbeatTimer;
  Timer? _reconnectTimer;
  int _reconnectAttempts = 0;
  static const int _maxReconnectMs = 30000;
  static const int _baseReconnectMs = 1000;
  final List<Map<String, dynamic>> _sendQueue = [];
  RealtimeStatus _status = RealtimeStatus.idle;
  final Set<Function(RealtimeStatus)> _statusListeners = {};
  DateTime _lastPong = DateTime.now();
  final int _maxReconnectAttempts;
  final Set<Function()> _maxRetriesListeners = {};
  late final Dio _dio;

  RealtimeClient({
    required String serverUrl,
    this.apiKey,
    this.token,
    int maxReconnectAttempts = 0,
  }) : _maxReconnectAttempts = maxReconnectAttempts {
    final uri = Uri.parse(serverUrl);
    final isSecure = uri.scheme == 'https' || uri.scheme == 'wss';
    _wsUri = uri.replace(
      scheme: isSecure ? 'wss' : 'ws',
      path: '/api/realtime',
    );
    _httpBaseUri = uri.replace(
      scheme: isSecure ? 'https' : 'http',
      path: '',
    );
    _dio = Dio(BaseOptions(
      baseUrl: _httpBaseUri.toString(),
      connectTimeout: const Duration(milliseconds: 10000),
      receiveTimeout: const Duration(milliseconds: 10000),
    ));
  }

  RealtimeStatus get status => _status;
  bool get connected => _isConnected;

  Function() onStatusChange(Function(RealtimeStatus) cb) {
    _statusListeners.add(cb);
    return () => _statusListeners.remove(cb);
  }

  Function() onMaxRetriesExceeded(Function() cb) {
    _maxRetriesListeners.add(cb);
    return () => _maxRetriesListeners.remove(cb);
  }

  void _setStatus(RealtimeStatus s) {
    _status = s;
    for (var cb in _statusListeners) {
      cb(s);
    }
  }

  void setToken(String newToken) {
    _send({'type': 'auth', 'token': newToken});
  }

  Future<void> connect() async {
    if (_isConnected) return;

    _setStatus(RealtimeStatus.connecting);
    
    // Construct final URL with auth — SECURITY: API key via subprotocol header, NOT URL query
    var finalUri = _wsUri;
    var query = Map<String, String>.from(finalUri.queryParameters);
    if (token != null) query['token'] = token!;
    finalUri = finalUri.replace(queryParameters: query);

    try {
      // Pass API key via Sec-WebSocket-Protocol header (never as URL query param)
      final protocols = apiKey != null
          ? ['aerostack-key.${apiKey!}', 'aerostack-v1']
          : <String>[];
      _channel = WebSocketChannel.connect(
        finalUri,
        protocols: protocols.isNotEmpty ? protocols : null,
      );
      _isConnected = true;
      _reconnectAttempts = 0;
      _lastPong = DateTime.now();
      _setStatus(RealtimeStatus.connected);

      // Flush send queue
      for (var msg in _sendQueue) {
        _channel!.sink.add(jsonEncode(msg));
      }
      _sendQueue.clear();

      _channel!.stream.listen(
        (message) {
          final data = jsonDecode(message);
          _handleMessage(data);
        },
        onDone: () {
          _isConnected = false;
          _setStatus(RealtimeStatus.reconnecting);
          _stopHeartbeat();
          _scheduleReconnect();
        },
        onError: (error) {
          _isConnected = false;
          _setStatus(RealtimeStatus.disconnected);
          _stopHeartbeat();
          _scheduleReconnect();
        },
      );

      _startHeartbeat();

      // Re-subscribe
      for (var sub in _subscriptions.values) {
        if (sub.isSubscribed) sub.subscribe();
      }
    } catch (e) {
      _isConnected = false;
      _setStatus(RealtimeStatus.disconnected);
      _scheduleReconnect();
    }
  }

  void _handleMessage(Map<String, dynamic> data) {
    final type = data['type'] as String?;

    if (type == 'pong') {
      _lastPong = DateTime.now();
      return;
    }

    if (type == 'ack') {
      // Acknowledgement for a published message — nothing to dispatch.
      return;
    }

    if (type == 'subscribed') {
      // Server confirmed subscription with its normalized topic (e.g. 'table/orders/<projectId>').
      // Re-key our subscription map so incoming db_change messages can be routed correctly.
      final serverTopic = data['topic'] as String?;
      if (serverTopic != null) {
        for (final origTopic in _subscriptions.keys.toList()) {
          if (serverTopic != origTopic && serverTopic.startsWith(origTopic)) {
            final sub = _subscriptions.remove(origTopic)!;
            sub.topic = serverTopic;
            _subscriptions[serverTopic] = sub;
            break;
          }
        }
      }
      return;
    }

    // Route 'event' messages (custom publish events) to the matching subscription.
    if (type == 'event') {
      final topic = data['topic'] as String?;
      if (topic != null && _subscriptions.containsKey(topic)) {
        _subscriptions[topic]!.emit(data);
      }
      return;
    }

    // Route db_change and other topic-based messages.
    final topic = data['topic'];
    if (topic != null && _subscriptions.containsKey(topic)) {
      _subscriptions[topic]!.emit(data);
    }

    // Additionally, try matching subscriptions by the 'event' field (custom event name)
    // for cases where the topic is absent but an event name matches a subscription key.
    final eventField = data['event'] as String?;
    if (eventField != null && topic == null && _subscriptions.containsKey(eventField)) {
      _subscriptions[eventField]!.emit(data);
    }
  }

  RealtimeSubscription channel(String topic, {Map<String, dynamic>? filter}) {
    if (_subscriptions.containsKey(topic)) {
      return _subscriptions[topic]!;
    }

    final sub = RealtimeSubscription(client: this, topic: topic, filter: filter);
    _subscriptions[topic] = sub;
    return sub;
  }

  void sendChat(String roomId, String text) {
    _send({'type': 'chat', 'roomId': roomId, 'text': text});
  }

  void disconnect() {
    _setStatus(RealtimeStatus.disconnected);
    _isConnected = false;
    _stopHeartbeat();
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    for (var sub in _subscriptions.values) {
      sub.close();
    }
    _sendQueue.clear();
  }

  /// @internal — Remove a subscription from the map (called on unsubscribe)
  void _removeSubscription(String topic) {
    _subscriptions.remove(topic);
  }

  /// @internal
  void _send(Map<String, dynamic> data) {
    if (_isConnected && _channel != null) {
      _channel!.sink.add(jsonEncode(data));
    } else {
      _sendQueue.add(data);
    }
  }

  /// @internal — fetch persisted history for a given topic via the REST API.
  Future<List<HistoryMessage>> _getHistory(
    String room, {
    int limit = 50,
    int? before,
  }) async {
    final queryParams = <String, dynamic>{
      'room': room,
      'limit': limit,
    };
    if (before != null) {
      queryParams['before'] = before;
    }

    final headers = <String, String>{};
    if (apiKey != null) {
      headers['X-Aerostack-Key'] = apiKey!;
    }
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    final response = await _dio.get<Map<String, dynamic>>(
      '/api/v1/public/realtime/history',
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    final body = response.data;
    if (body == null) return [];

    final messages = body['messages'] as List<dynamic>? ?? body['data'] as List<dynamic>? ?? [];
    return messages
        .map((m) => HistoryMessage.fromJson(m as Map<String, dynamic>))
        .toList();
  }

  void _startHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = Timer.periodic(Duration(seconds: 30), (timer) {
      _send({'type': 'ping'});
      if (DateTime.now().difference(_lastPong).inSeconds > 70) {
        _channel?.sink.close();
      }
    });
  }

  void _stopHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
  }

  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    if (_maxReconnectAttempts > 0 && _reconnectAttempts >= _maxReconnectAttempts) {
      _setStatus(RealtimeStatus.disconnected);
      for (var cb in _maxRetriesListeners) {
        cb();
      }
      return;
    }
    final random = Random();
    final delay = min(
      _baseReconnectMs * pow(2, _reconnectAttempts).toInt(),
      _maxReconnectMs,
    );
    final jitter = (delay * 0.3 * random.nextDouble()).toInt();
    _reconnectAttempts++;
    _reconnectTimer = Timer(Duration(milliseconds: delay + jitter), () {
      connect();
    });
  }
}
