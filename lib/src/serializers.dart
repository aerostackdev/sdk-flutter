//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:aerostack_sdk/src/date_serializer.dart';
import 'package:aerostack_sdk/src/model/date.dart';

import 'package:aerostack_sdk/src/model/ai_chat200_response.dart';
import 'package:aerostack_sdk/src/model/ai_chat_request.dart';
import 'package:aerostack_sdk/src/model/ai_chat_request_messages_inner.dart';
import 'package:aerostack_sdk/src/model/auth_response.dart';
import 'package:aerostack_sdk/src/model/auth_signin_request.dart';
import 'package:aerostack_sdk/src/model/auth_signup_request.dart';
import 'package:aerostack_sdk/src/model/cache_get200_response.dart';
import 'package:aerostack_sdk/src/model/cache_get_request.dart';
import 'package:aerostack_sdk/src/model/cache_set200_response.dart';
import 'package:aerostack_sdk/src/model/cache_set_request.dart';
import 'package:aerostack_sdk/src/model/configure_request.dart';
import 'package:aerostack_sdk/src/model/db_query_request.dart';
import 'package:aerostack_sdk/src/model/db_query_result.dart';
import 'package:aerostack_sdk/src/model/delete_by_type_request.dart';
import 'package:aerostack_sdk/src/model/delete_request.dart';
import 'package:aerostack_sdk/src/model/error_response.dart';
import 'package:aerostack_sdk/src/model/gateway_billing_log200_response.dart';
import 'package:aerostack_sdk/src/model/gateway_billing_log_request.dart';
import 'package:aerostack_sdk/src/model/ingest_request.dart';
import 'package:aerostack_sdk/src/model/list_types200_response.dart';
import 'package:aerostack_sdk/src/model/query200_response.dart';
import 'package:aerostack_sdk/src/model/query_request.dart';
import 'package:aerostack_sdk/src/model/queue_enqueue201_response.dart';
import 'package:aerostack_sdk/src/model/queue_enqueue_request.dart';
import 'package:aerostack_sdk/src/model/search_result.dart';
import 'package:aerostack_sdk/src/model/services_invoke200_response.dart';
import 'package:aerostack_sdk/src/model/services_invoke_request.dart';
import 'package:aerostack_sdk/src/model/storage_upload200_response.dart';
import 'package:aerostack_sdk/src/model/type_stats.dart';
import 'package:aerostack_sdk/src/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  AiChat200Response,
  AiChatRequest,
  AiChatRequestMessagesInner,
  AuthResponse,
  AuthSigninRequest,
  AuthSignupRequest,
  CacheGet200Response,
  CacheGetRequest,
  CacheSet200Response,
  CacheSetRequest,
  ConfigureRequest,
  DbQueryRequest,
  DbQueryResult,
  DeleteByTypeRequest,
  DeleteRequest,
  ErrorResponse,
  GatewayBillingLog200Response,
  GatewayBillingLogRequest,
  IngestRequest,
  ListTypes200Response,
  Query200Response,
  QueryRequest,
  QueueEnqueue201Response,
  QueueEnqueueRequest,
  SearchResult,
  ServicesInvoke200Response,
  ServicesInvokeRequest,
  StorageUpload200Response,
  TypeStats,
  User,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
