import 'package:dio/dio.dart';

class CacheService {
  final Dio dio;
  CacheService(this.dio);

  Future<Map<String, dynamic>> getValue(String key) async {
    final Response response = await dio.post(
      '/cache/get',
      data: {'key': key},
    );
    return response.data;
  }

  Future<bool> setValue(String key, dynamic value, {int? ttl}) async {
    final Response response = await dio.post(
      '/cache/set',
      data: {
        'key': key,
        'value': value,
        if (ttl != null) 'ttl': ttl
      },
    );
    return response.data['success'] as bool;
  }
}