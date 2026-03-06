//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:aerostack_sdk/src/serializers.dart';
import 'package:aerostack_sdk/src/auth/api_key_auth.dart';
import 'package:aerostack_sdk/src/auth/basic_auth.dart';
import 'package:aerostack_sdk/src/auth/bearer_auth.dart';
import 'package:aerostack_sdk/src/auth/oauth.dart';
import 'package:aerostack_sdk/src/api/ai_api.dart';
import 'package:aerostack_sdk/src/api/authentication_api.dart';
import 'package:aerostack_sdk/src/api/cache_api.dart';
import 'package:aerostack_sdk/src/api/database_api.dart';
import 'package:aerostack_sdk/src/api/gateway_api.dart';
import 'package:aerostack_sdk/src/api/queue_api.dart';
import 'package:aerostack_sdk/src/api/services_api.dart';
import 'package:aerostack_sdk/src/api/storage_api.dart';

class AerostackSdk {
  static const String basePath = r'https://api.aerocall.ai/v1';

  final Dio dio;
  final Serializers serializers;

  AerostackSdk({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AIApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AIApi getAIApi() {
    return AIApi(dio, serializers);
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
  }

  /// Get CacheApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CacheApi getCacheApi() {
    return CacheApi(dio, serializers);
  }

  /// Get DatabaseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DatabaseApi getDatabaseApi() {
    return DatabaseApi(dio, serializers);
  }

  /// Get GatewayApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GatewayApi getGatewayApi() {
    return GatewayApi(dio, serializers);
  }

  /// Get QueueApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QueueApi getQueueApi() {
    return QueueApi(dio, serializers);
  }

  /// Get ServicesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ServicesApi getServicesApi() {
    return ServicesApi(dio, serializers);
  }

  /// Get StorageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StorageApi getStorageApi() {
    return StorageApi(dio, serializers);
  }
}
