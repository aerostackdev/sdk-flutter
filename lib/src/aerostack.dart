import 'package:dio/dio.dart';

import 'services/auth_service.dart';
import 'services/db_service.dart';
import 'services/ai_service.dart';
import 'services/cache_service.dart';
import 'services/storage_service.dart';
import 'services/queue_service.dart';
import 'services/realtime_service.dart';

class Aerostack {
  final Dio _dio;

  Aerostack({required String baseUrl, required String apiKey}) : _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      headers: {
        'X-API-Key': apiKey,
        'X-Aerostack-Key': apiKey,
      },
    ),
  ) {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioException e, handler) {
        // Prevent crash when error data is a Map but user code expects a String
        if (e.response?.data is Map) {
           final errorData = e.response?.data as Map<String, dynamic>;
           print('Aerostack API Error: ${errorData['error']?['message'] ?? e.message}');
        }
        return handler.next(e);
      },
    ));
  }

  late final RealtimeService _realtime = RealtimeService(
    baseUrl: _dio.options.baseUrl,
    apiKey: _dio.options.headers['X-API-Key'] as String,
  );

  AuthService get auth => AuthService(_dio);

  DbService get db => DbService(_dio);

  AIService get ai => AIService(_dio);

  CacheService get cache => CacheService(_dio);

  StorageService get storage => StorageService(_dio);

  QueueService get queue => QueueService(_dio);

  RealtimeService get realtime => _realtime;

  Future<dynamic> call(String slug, dynamic data, {String method = 'POST'}) async {
    final response = await _dio.request(
      '/custom/$slug',
      data: data,
      options: Options(method: method),
    );
    return response.data;
  }
}