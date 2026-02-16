import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:web_socket_channel/web_socket_channel.dart';

class RealtimeSubscription {
  final String topic;
  final Map<String, dynamic>? filter;
  final StreamController<Map<String, dynamic>> _controller = StreamController<Map<String, dynamic>>.broadcast();

  RealtimeSubscription({required this.topic, this.filter});

  Stream<Map<String, dynamic>> get stream => _controller.stream;

  void emit(Map<String, dynamic> data) {
    if (!_controller.isClosed) {
      _controller.add(data);
    }
  }

  void close() {
    _controller.close();
  }
}

class RealtimeService {
  final String baseUrl;
  final String apiKey;
  WebSocketChannel? _channel;
  final Map<String, RealtimeSubscription> _subscriptions = {};
  bool _isConnected = false;
  Timer? _heartbeatTimer;
  Timer? _reconnectTimer;
  int _reconnectAttempts = 0;
  static const int _maxReconnectMs = 30000;
  static const int _baseReconnectMs = 1000;

  RealtimeService({required String baseUrl, required this.apiKey}) 
    : baseUrl = baseUrl.replaceFirst('http', 'ws') + '/realtime';

  Future<void> connect() async {
    if (_isConnected) return;

    final url = Uri.parse('$baseUrl?projectId=$apiKey');
    _channel = WebSocketChannel.connect(url);
    _isConnected = true;
    _reconnectAttempts = 0;

    _channel!.stream.listen(
      (message) {
        final data = jsonDecode(message);
        final topic = data['topic'];
        if (_subscriptions.containsKey(topic)) {
          _subscriptions[topic]!.emit(data);
        }
      },
      onDone: () {
        _isConnected = false;
        _stopHeartbeat();
        _scheduleReconnect();
      },
      onError: (error) {
        _isConnected = false;
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

  RealtimeSubscription subscribe(String topic, {Map<String, dynamic>? filter}) {
    if (_subscriptions.containsKey(topic)) {
      return _subscriptions[topic]!;
    }

    final sub = RealtimeSubscription(topic: topic, filter: filter);
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

  void disconnect() {
    _isConnected = false;
    _stopHeartbeat();
    _reconnectTimer?.cancel();
    _channel?.sink.close();
    for (var sub in _subscriptions.values) {
      sub.close();
    }
  }

  void _send(Map<String, dynamic> data) {
    if (_isConnected && _channel != null) {
      _channel!.sink.add(jsonEncode(data));
    }
  }

  void _startHeartbeat() {
    _heartbeatTimer = Timer.periodic(Duration(seconds: 30), (timer) {
      _send({'type': 'ping'});
    });
  }

  void _stopHeartbeat() {
    _heartbeatTimer?.cancel();
  }

  /// Exponential backoff with jitter: 1s → 2s → 4s → ... → 30s
  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
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
