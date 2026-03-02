import 'package:aerostack_sdk/src/api.dart';
import 'package:aerostack_sdk/src/api/database_api.dart';
import 'package:aerostack_sdk/src/api/authentication_api.dart';
import 'package:aerostack_sdk/src/api/ai_api.dart';
import 'package:aerostack_sdk/src/api/storage_api.dart';
import 'package:aerostack_sdk/src/model/db_query_request.dart';
import 'package:aerostack_sdk/src/model/db_query_result.dart';
import 'package:aerostack_sdk/src/realtime.dart';
import 'package:dio/dio.dart';

class DatabaseFacade {
  final DatabaseApi _api;
  DatabaseFacade(this._api);

  Future<DbQueryResult?> dbQuery({
    String? sql,
    List<dynamic>? params,
    DbQueryRequest? dbQueryRequest,
    Map<String, dynamic>? request, // Compatibility
  }) async {
    final req = dbQueryRequest ??
        (request != null
            ? DbQueryRequest((b) => b
              ..sql = (request['sql'] ?? request['query'] ?? sql)
              ..params.addAll(request['params'] ?? params ?? []))
            : DbQueryRequest((b) => b
              ..sql = sql
              ..params.addAll(params ?? [])));

    final res = await _api.dbQuery(dbQueryRequest: req);
    return res.data;
  }
}

class SDK {
  final AuthenticationApi auth;
  final AIApi ai;
  final StorageApi storage;
  final DatabaseFacade database;
  final RealtimeClient realtime;

  final AerostackSdk _api;

  SDK({
    String? apiKey,
    String? apiKeyAuth,
    String serverUrl = 'https://api.aerocall.ai/v1',
    int? maxReconnectAttempts,
  }) : _api = AerostackSdk(
          dio: Dio(BaseOptions(baseUrl: serverUrl)),
          interceptors: [
            InterceptorsWrapper(onRequest: (options, handler) {
              final key = apiKey ?? apiKeyAuth;
              if (key != null) {
                options.headers['X-Aerostack-Key'] = key;
              }
              return handler.next(options);
            })
          ],
        ),
        auth = AerostackSdk(dio: Dio(BaseOptions(baseUrl: serverUrl))).getAuthenticationApi(),
        ai = AerostackSdk(dio: Dio(BaseOptions(baseUrl: serverUrl))).getAIApi(),
        storage = AerostackSdk(dio: Dio(BaseOptions(baseUrl: serverUrl))).getStorageApi(),
        database = DatabaseFacade(AerostackSdk(dio: Dio(BaseOptions(baseUrl: serverUrl))).getDatabaseApi()),
        realtime = RealtimeClient(
          serverUrl: serverUrl,
          apiKey: apiKey ?? apiKeyAuth,
          maxReconnectAttempts: maxReconnectAttempts ?? 0,
        );
}

/// @deprecated Use SDK instead
typedef Aerostack = SDK;
