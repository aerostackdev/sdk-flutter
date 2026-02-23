import 'package:dio/dio.dart';
import '../models/db_models.dart';

class DbService {
  final Dio dio;
  DbService(this.dio);

  Future<DbQueryResult> executeQuery(String sql, {List<dynamic>? params}) async {
    final Response response = await dio.post(
      '/db/query',
      data: {
        'sql': sql,
        if (params != null) 'params': params
      },
    );
    return DbQueryResult.fromJson(response.data);
  }
}