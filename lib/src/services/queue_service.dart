import 'package:dio/dio.dart';

class QueueService {
  final Dio dio;
  QueueService(this.dio);

  Future<Map<String, dynamic>> enqueueJob(String type, Map<String, dynamic> data, {int? delay}) async {
    final Response response = await dio.post(
      '/queue/enqueue',
      data: {
        'type': type,
        'data': data,
        if (delay != null) 'delay': delay
      },
    );
    return response.data;
  }
}