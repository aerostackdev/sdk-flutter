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
  late final AuthenticationApi auth;
  late final AIApi ai;
  late final StorageApi storage;
  late final DatabaseFacade database;
  late final RealtimeClient realtime;

  late final AerostackSdk _api;

  SDK({
    String? apiKey,
    String? apiKeyAuth,
    String serverUrl = 'https://api.aerostack.dev/v1',
    int? maxReconnectAttempts,
  }) {
    final key = apiKey ?? apiKeyAuth;
    // All service instances share the same Dio with the API key interceptor
    _api = AerostackSdk(
      dio: Dio(BaseOptions(baseUrl: serverUrl)),
      interceptors: [
        InterceptorsWrapper(onRequest: (options, handler) {
          if (key != null) {
            options.headers['X-Aerostack-Key'] = key;
          }
          return handler.next(options);
        })
      ],
    );
    auth = _api.getAuthenticationApi();
    ai = _api.getAIApi();
    storage = _api.getStorageApi();
    database = DatabaseFacade(_api.getDatabaseApi());
    realtime = RealtimeClient(
      serverUrl: serverUrl,
      apiKey: key,
      maxReconnectAttempts: maxReconnectAttempts ?? 0,
    );
  }
}

/// @deprecated Use SDK instead
typedef Aerostack = SDK;
