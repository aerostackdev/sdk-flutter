import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:web_socket_channel/web_socket_channel.dart';

class RealtimeSubscription {
  final RealtimeService _service;
  final String topic;
  final Map<String, dynamic>? filter;
  final StreamController<Map<String, dynamic>> _controller =
      StreamController<Map<String, dynamic>>.broadcast();

  RealtimeSubscription(
      {required RealtimeService service,
      required this.topic,
      this.filter})
      : _service = service;

  Stream<Map<String, dynamic>> get stream => _controller.stream;

  void emit(Map<String, dynamic> data) {
    if (!_controller.isClosed) {
      _controller.add(data);
    }
  }

  void unsubscribe() {
    _service._send({
      'type': 'unsubscribe',
      'topic': topic,
    });
    close();
  }

  void close() {
    _controller.close();
  }
}

class RealtimeService {
  late final Uri _wsUri;
  final String apiKey;
  final String projectId;
  WebSocketChannel? _channel;
  final Map<String, RealtimeSubscription> _subscriptions = {};
  bool _isConnected = false;
  Timer? _heartbeatTimer;
  Timer? _reconnectTimer;
  int _reconnectAttempts = 0;
  static const int _maxReconnectMs = 30000;
  static const int _baseReconnectMs = 1000;
  final List<Map<String, dynamic>> _sendQueue = [];
  String _status = 'idle';
  final Set<Function(String)> _statusListeners = {};
  DateTime _lastPong = DateTime.now();
  final int _maxReconnectAttempts;
  final Set<Function()> _maxRetriesListeners = {};

  RealtimeService({
    required String baseUrl,
    required this.apiKey,
    this.projectId = '',
    int maxReconnectAttempts = 0,
  }) : _maxReconnectAttempts = maxReconnectAttempts {
    final uri = Uri.parse(baseUrl);
    final isSecure = uri.scheme == 'https';
    _wsUri = uri.replace(
      scheme: isSecure ? 'wss' : 'ws',
      path: '/api/realtime',
      queryParameters: {'apiKey': apiKey},
    );
  }

  String get status => _status;

  Function() onStatusChange(Function(String) cb) {
    _statusListeners.add(cb);
    return () => _statusListeners.remove(cb);
  }

  Function() onMaxRetriesExceeded(Function() cb) {
    _maxRetriesListeners.add(cb);
    return () => _maxRetriesListeners.remove(cb);
  }

  void _setStatus(String s) {
    _status = s;
    for (var cb in _statusListeners) {
      cb(s);
    }
  }

  /// Update auth token on live connection (B4)
  void setToken(String newToken) {
    _send({'type': 'auth', 'token': newToken});
  }

  Future<void> connect() async {
    if (_isConnected) return;

    _setStatus('connecting');
    _channel = WebSocketChannel.connect(_wsUri);
    _isConnected = true;
    _reconnectAttempts = 0;
    _lastPong = DateTime.now();
    _setStatus('connected');

    // Flush send queue
    for (var msg in _sendQueue) {
      _channel!.sink.add(jsonEncode(msg));
    }
    _sendQueue.clear();

    _channel!.stream.listen(
      (message) {
        final data = jsonDecode(message);
        if (data['type'] == 'pong') {
          _lastPong = DateTime.now();
          return;
        }
        final topic = data['topic'];
        if (_subscriptions.containsKey(topic)) {
          _subscriptions[topic]!.emit(data);
        }
      },
      onDone: () {
        _isConnected = false;
        _setStatus('reconnecting');
        _stopHeartbeat();
        _scheduleReconnect();
      },
      onError: (error) {
        _isConnected = false;
        _setStatus('disconnected');
        _stopHeartbeat();
      },
    );

    _startHeartbeat();

    // Re-subscribe
    for (var sub in _subscriptions.values) {
      _send({
        'type': 'subscribe',
        'topic': sub.topic,
        'filter': sub.filter,
      });
    }
  }

  RealtimeSubscription subscribe(String topic,
      {Map<String, dynamic>? filter}) {
    if (_subscriptions.containsKey(topic)) {
      return _subscriptions[topic]!;
    }

    final sub = RealtimeSubscription(
        service: this, topic: topic, filter: filter);
    _subscriptions[topic] = sub;

    if (_isConnected) {
      _send({
        'type': 'subscribe',
        'topic': topic,
        'filter': filter,
      });
    }

    return sub;
  }

  void sendChat(String roomId, String text) {
    _send({'type': 'chat', 'roomId': roomId, 'text': text});
  }

  RealtimeSubscription chatRoom(String roomId) {
    return subscribe('chat/$roomId/$projectId');
  }

  void disconnect() {
    _setStatus('disconnected');
    _isConnected = false;
    _stopHeartbeat();
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    for (var sub in _subscriptions.values) {
      sub.close();
    }
    _sendQueue.clear();
  }

  void _send(Map<String, dynamic> data) {
    if (_isConnected && _channel != null) {
      _channel!.sink.add(jsonEncode(data));
    } else {
      _sendQueue.add(data);
    }
  }

  void _startHeartbeat() {
    _heartbeatTimer = Timer.periodic(Duration(seconds: 30), (timer) {
      _send({'type': 'ping'});
      // B3: Dead connection check
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
    // A16: Max retries
    if (_maxReconnectAttempts > 0 && _reconnectAttempts >= _maxReconnectAttempts) {
      _setStatus('disconnected');
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
