# aerostack_sdk.api.QueueApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerocall.ai/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**queueCancelJob**](QueueApi.md#queuecanceljob) | **POST** /queue/cancel | Cancel a queued job
[**queueEnqueue**](QueueApi.md#queueenqueue) | **POST** /queue/enqueue | Add job to queue
[**queueGetJob**](QueueApi.md#queuegetjob) | **POST** /queue/job | Get job status by ID
[**queueListJobs**](QueueApi.md#queuelistjobs) | **POST** /queue/jobs | List jobs with optional filters


# **queueCancelJob**
> QueueCancelJob200Response queueCancelJob(queueGetJobRequest)

Cancel a queued job

Marks a job as `cancelled` in the job store. This is advisory only — if a consumer Worker has already picked up the job, it will still execute unless the consumer explicitly checks job status before processing. Cannot cancel jobs already in `completed` or `failed` state. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getQueueApi();
final QueueGetJobRequest queueGetJobRequest = ; // QueueGetJobRequest | 

try {
    final response = api.queueCancelJob(queueGetJobRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueApi->queueCancelJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueGetJobRequest** | [**QueueGetJobRequest**](QueueGetJobRequest.md)|  | 

### Return type

[**QueueCancelJob200Response**](QueueCancelJob200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queueEnqueue**
> QueueEnqueue201Response queueEnqueue(queueEnqueueRequest)

Add job to queue

Enqueues a job for background processing. Returns a `jobId` that can be used with `/queue/job` to track status. Job metadata is persisted for 7 days. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getQueueApi();
final QueueEnqueueRequest queueEnqueueRequest = ; // QueueEnqueueRequest | 

try {
    final response = api.queueEnqueue(queueEnqueueRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueApi->queueEnqueue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueEnqueueRequest** | [**QueueEnqueueRequest**](QueueEnqueueRequest.md)|  | 

### Return type

[**QueueEnqueue201Response**](QueueEnqueue201Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queueGetJob**
> QueueGetJob200Response queueGetJob(queueGetJobRequest)

Get job status by ID

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getQueueApi();
final QueueGetJobRequest queueGetJobRequest = ; // QueueGetJobRequest | 

try {
    final response = api.queueGetJob(queueGetJobRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueApi->queueGetJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueGetJobRequest** | [**QueueGetJobRequest**](QueueGetJobRequest.md)|  | 

### Return type

[**QueueGetJob200Response**](QueueGetJob200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queueListJobs**
> QueueListJobs200Response queueListJobs(queueListJobsRequest)

List jobs with optional filters

Returns paginated job records. Filter by `status` (queued, processing, completed, failed, cancelled) or `type`. Uses cursor-based pagination. Job metadata is retained for 7 days. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getQueueApi();
final QueueListJobsRequest queueListJobsRequest = ; // QueueListJobsRequest | 

try {
    final response = api.queueListJobs(queueListJobsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QueueApi->queueListJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueListJobsRequest** | [**QueueListJobsRequest**](QueueListJobsRequest.md)|  | 

### Return type

[**QueueListJobs200Response**](QueueListJobs200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

