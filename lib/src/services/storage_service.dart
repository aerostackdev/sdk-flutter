import 'package:dio/dio.dart';

class StorageService {
  final Dio dio;
  StorageService(this.dio);

  Future<String> uploadFile(String key, String filePath, {String? contentType}) async {
    final formData = FormData.fromMap({
      'key': key,
      'file': await MultipartFile.fromFile(filePath),
      if (contentType != null) 'contentType': contentType
    });

    final Response response = await dio.post('/storage/upload', data: formData);
    return response.data['url'] as String;
  }
}