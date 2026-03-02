import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:web_socket_channel/web_socket_channel.dart';

enum RealtimeStatus { idle, connecting, connected, reconnecting, disconnected }

class RealtimeSubscription<T> {
  final RealtimeClient _client;
  final String topic;
  final Map<String, dynamic>? filter;
  final StreamController<Map<String, dynamic>> _controller =
      StreamController<Map<String, dynamic>>.broadcast();
  bool _isSubscribed = false;

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
    
    // Construct final URL with auth
    var finalUri = _wsUri;
    var query = Map<String, String>.from(finalUri.queryParameters);
    if (apiKey != null) query['apiKey'] = apiKey!;
    if (token != null) query['token'] = token!;
    finalUri = finalUri.replace(queryParameters: query);

    try {
      _channel = WebSocketChannel.connect(finalUri);
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
    if (data['type'] == 'pong') {
      _lastPong = DateTime.now();
      return;
    }
    final topic = data['topic'];
    if (topic != null && _subscriptions.containsKey(topic)) {
      _subscriptions[topic]!.emit(data);
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

  /// @internal
  void _send(Map<String, dynamic> data) {
    if (_isConnected && _channel != null) {
      _channel!.sink.add(jsonEncode(data));
    } else {
      _sendQueue.add(data);
    }
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
