import 'package:dio/dio.dart';

class AIService {
  final Dio dio;
  AIService(this.dio);

  Future<String> chat(List<Map<String, String>> messages, {String? model}) async {
    final Response response = await dio.post(
      '/ai/chat',
      data: {
        'messages': messages,
        if (model != null) 'model': model
      },
    );
    return response.data['response'] as String;
  }

  Future<Map<String, dynamic>> ingest(String content, String type, {String? id, Map<String, dynamic>? metadata}) async {
    final Response response = await dio.post(
      '/ai/search/ingest',
      data: {
        'content': content,
        'type': type,
        if (id != null) 'id': id,
        if (metadata != null) 'metadata': metadata
      },
    );
    return response.data;
  }
}