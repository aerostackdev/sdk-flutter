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

import 'package:aerostack_sdk/src/model/auth_response.dart';
import 'package:aerostack_sdk/src/model/auth_signin_request.dart';
import 'package:aerostack_sdk/src/model/auth_signup_request.dart';
import 'package:aerostack_sdk/src/model/cache_delete_many200_response.dart';
import 'package:aerostack_sdk/src/model/cache_delete_many_request.dart';
import 'package:aerostack_sdk/src/model/cache_expire_request.dart';
import 'package:aerostack_sdk/src/model/cache_flush200_response.dart';
import 'package:aerostack_sdk/src/model/cache_flush_request.dart';
import 'package:aerostack_sdk/src/model/cache_get200_response.dart';
import 'package:aerostack_sdk/src/model/cache_get_many200_response.dart';
import 'package:aerostack_sdk/src/model/cache_get_many_entry.dart';
import 'package:aerostack_sdk/src/model/cache_get_many_request.dart';
import 'package:aerostack_sdk/src/model/cache_get_request.dart';
import 'package:aerostack_sdk/src/model/cache_increment200_response.dart';
import 'package:aerostack_sdk/src/model/cache_increment_request.dart';
import 'package:aerostack_sdk/src/model/cache_key_entry.dart';
import 'package:aerostack_sdk/src/model/cache_keys200_response.dart';
import 'package:aerostack_sdk/src/model/cache_keys_request.dart';
import 'package:aerostack_sdk/src/model/cache_list_request.dart';
import 'package:aerostack_sdk/src/model/cache_list_result.dart';
import 'package:aerostack_sdk/src/model/cache_set200_response.dart';
import 'package:aerostack_sdk/src/model/cache_set_entry.dart';
import 'package:aerostack_sdk/src/model/cache_set_many200_response.dart';
import 'package:aerostack_sdk/src/model/cache_set_many_request.dart';
import 'package:aerostack_sdk/src/model/cache_set_request.dart';
import 'package:aerostack_sdk/src/model/chat_completion_request.dart';
import 'package:aerostack_sdk/src/model/chat_completion_request_stream_options.dart';
import 'package:aerostack_sdk/src/model/chat_completion_response.dart';
import 'package:aerostack_sdk/src/model/chat_completion_response_choices_inner.dart';
import 'package:aerostack_sdk/src/model/chat_message.dart';
import 'package:aerostack_sdk/src/model/configure_request.dart';
import 'package:aerostack_sdk/src/model/db_batch_request.dart';
import 'package:aerostack_sdk/src/model/db_batch_request_queries_inner.dart';
import 'package:aerostack_sdk/src/model/db_batch_result.dart';
import 'package:aerostack_sdk/src/model/db_batch_result_results_inner.dart';
import 'package:aerostack_sdk/src/model/db_query_request.dart';
import 'package:aerostack_sdk/src/model/db_query_result.dart';
import 'package:aerostack_sdk/src/model/delete_by_type_request.dart';
import 'package:aerostack_sdk/src/model/delete_request.dart';
import 'package:aerostack_sdk/src/model/error_response.dart';
import 'package:aerostack_sdk/src/model/gateway_billing_log200_response.dart';
import 'package:aerostack_sdk/src/model/gateway_billing_log_request.dart';
import 'package:aerostack_sdk/src/model/gateway_get_wallet200_response.dart';
import 'package:aerostack_sdk/src/model/ingest_request.dart';
import 'package:aerostack_sdk/src/model/job_record.dart';
import 'package:aerostack_sdk/src/model/list_types200_response.dart';
import 'package:aerostack_sdk/src/model/query200_response.dart';
import 'package:aerostack_sdk/src/model/query_request.dart';
import 'package:aerostack_sdk/src/model/queue_cancel_job200_response.dart';
import 'package:aerostack_sdk/src/model/queue_enqueue201_response.dart';
import 'package:aerostack_sdk/src/model/queue_enqueue_request.dart';
import 'package:aerostack_sdk/src/model/queue_get_job200_response.dart';
import 'package:aerostack_sdk/src/model/queue_get_job_request.dart';
import 'package:aerostack_sdk/src/model/queue_list_jobs200_response.dart';
import 'package:aerostack_sdk/src/model/queue_list_jobs_request.dart';
import 'package:aerostack_sdk/src/model/search_count200_response.dart';
import 'package:aerostack_sdk/src/model/search_count_request.dart';
import 'package:aerostack_sdk/src/model/search_get200_response.dart';
import 'package:aerostack_sdk/src/model/search_get_request.dart';
import 'package:aerostack_sdk/src/model/search_result.dart';
import 'package:aerostack_sdk/src/model/search_update_request.dart';
import 'package:aerostack_sdk/src/model/services_invoke200_response.dart';
import 'package:aerostack_sdk/src/model/services_invoke_request.dart';
import 'package:aerostack_sdk/src/model/storage_copy200_response.dart';
import 'package:aerostack_sdk/src/model/storage_copy_request.dart';
import 'package:aerostack_sdk/src/model/storage_exists200_response.dart';
import 'package:aerostack_sdk/src/model/storage_get_request.dart';
import 'package:aerostack_sdk/src/model/storage_list_request.dart';
import 'package:aerostack_sdk/src/model/storage_list_result.dart';
import 'package:aerostack_sdk/src/model/storage_metadata.dart';
import 'package:aerostack_sdk/src/model/storage_move200_response.dart';
import 'package:aerostack_sdk/src/model/storage_move_request.dart';
import 'package:aerostack_sdk/src/model/storage_object.dart';
import 'package:aerostack_sdk/src/model/storage_upload200_response.dart';
import 'package:aerostack_sdk/src/model/token_usage.dart';
import 'package:aerostack_sdk/src/model/token_wallet.dart';
import 'package:aerostack_sdk/src/model/type_stats.dart';
import 'package:aerostack_sdk/src/model/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthResponse,
  AuthSigninRequest,
  AuthSignupRequest,
  CacheDeleteMany200Response,
  CacheDeleteManyRequest,
  CacheExpireRequest,
  CacheFlush200Response,
  CacheFlushRequest,
  CacheGet200Response,
  CacheGetMany200Response,
  CacheGetManyEntry,
  CacheGetManyRequest,
  CacheGetRequest,
  CacheIncrement200Response,
  CacheIncrementRequest,
  CacheKeyEntry,
  CacheKeys200Response,
  CacheKeysRequest,
  CacheListRequest,
  CacheListResult,
  CacheSet200Response,
  CacheSetEntry,
  CacheSetMany200Response,
  CacheSetManyRequest,
  CacheSetRequest,
  ChatCompletionRequest,
  ChatCompletionRequestStreamOptions,
  ChatCompletionResponse,
  ChatCompletionResponseChoicesInner,
  ChatMessage,
  ConfigureRequest,
  DbBatchRequest,
  DbBatchRequestQueriesInner,
  DbBatchResult,
  DbBatchResultResultsInner,
  DbQueryRequest,
  DbQueryResult,
  DeleteByTypeRequest,
  DeleteRequest,
  ErrorResponse,
  GatewayBillingLog200Response,
  GatewayBillingLogRequest,
  GatewayGetWallet200Response,
  IngestRequest,
  JobRecord,
  ListTypes200Response,
  Query200Response,
  QueryRequest,
  QueueCancelJob200Response,
  QueueEnqueue201Response,
  QueueEnqueueRequest,
  QueueGetJob200Response,
  QueueGetJobRequest,
  QueueListJobs200Response,
  QueueListJobsRequest,
  SearchCount200Response,
  SearchCountRequest,
  SearchGet200Response,
  SearchGetRequest,
  SearchResult,
  SearchUpdateRequest,
  ServicesInvoke200Response,
  ServicesInvokeRequest,
  StorageCopy200Response,
  StorageCopyRequest,
  StorageExists200Response,
  StorageGetRequest,
  StorageListRequest,
  StorageListResult,
  StorageMetadata,
  StorageMove200Response,
  StorageMoveRequest,
  StorageObject,
  StorageUpload200Response,
  TokenUsage,
  TokenWallet,
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
