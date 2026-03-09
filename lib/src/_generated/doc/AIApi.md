# aerostack_sdk.api.AIApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiChat**](AIApi.md#aichat) | **POST** /ai/chat | Generate AI chat completion
[**configure**](AIApi.md#configure) | **POST** /ai/search/configure | Update search configuration
[**delete**](AIApi.md#delete) | **POST** /ai/search/delete | Delete item by ID
[**deleteByType**](AIApi.md#deletebytype) | **POST** /ai/search/deleteByType | Delete all items of a type
[**ingest**](AIApi.md#ingest) | **POST** /ai/search/ingest | Ingest content into managed search index
[**listTypes**](AIApi.md#listtypes) | **GET** /ai/search/listTypes | List distinct types and counts
[**query**](AIApi.md#query) | **POST** /ai/search/query | Search managed index
[**searchCount**](AIApi.md#searchcount) | **POST** /ai/search/count | Count indexed items
[**searchGet**](AIApi.md#searchget) | **POST** /ai/search/get | Get a specific indexed item by ID
[**searchUpdate**](AIApi.md#searchupdate) | **POST** /ai/search/update | Update an existing indexed item


# **aiChat**
> ChatCompletionResponse aiChat(chatCompletionRequest)

Generate AI chat completion

Generate a chat completion using the project's configured AI model. Set `stream: true` to receive a server-sent events (SSE) stream of token deltas in OpenAI-compatible format. Each data frame contains a JSON object with `choices[0].delta.content`. The stream ends with `data: [DONE]`. The final frame (when `stream_options.include_usage` is true) includes a `usage` object with `total_tokens`. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final ChatCompletionRequest chatCompletionRequest = ; // ChatCompletionRequest | 

try {
    final response = api.aiChat(chatCompletionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->aiChat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | 

### Return type

[**ChatCompletionResponse**](ChatCompletionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configure**
> CacheSet200Response configure(configureRequest)

Update search configuration

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final ConfigureRequest configureRequest = ; // ConfigureRequest | 

try {
    final response = api.configure(configureRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->configure: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configureRequest** | [**ConfigureRequest**](ConfigureRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> CacheSet200Response delete(deleteRequest)

Delete item by ID

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final DeleteRequest deleteRequest = ; // DeleteRequest | 

try {
    final response = api.delete(deleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->delete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteRequest** | [**DeleteRequest**](DeleteRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteByType**
> CacheSet200Response deleteByType(deleteByTypeRequest)

Delete all items of a type

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final DeleteByTypeRequest deleteByTypeRequest = ; // DeleteByTypeRequest | 

try {
    final response = api.deleteByType(deleteByTypeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->deleteByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteByTypeRequest** | [**DeleteByTypeRequest**](DeleteByTypeRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ingest**
> CacheSet200Response ingest(ingestRequest)

Ingest content into managed search index

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final IngestRequest ingestRequest = ; // IngestRequest | 

try {
    final response = api.ingest(ingestRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->ingest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ingestRequest** | [**IngestRequest**](IngestRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTypes**
> ListTypes200Response listTypes()

List distinct types and counts

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();

try {
    final response = api.listTypes();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->listTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListTypes200Response**](ListTypes200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query**
> Query200Response query(queryRequest)

Search managed index

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final QueryRequest queryRequest = ; // QueryRequest | 

try {
    final response = api.query(queryRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->query: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queryRequest** | [**QueryRequest**](QueryRequest.md)|  | 

### Return type

[**Query200Response**](Query200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCount**
> SearchCount200Response searchCount(searchCountRequest)

Count indexed items

Returns total count of indexed items, optionally filtered by type.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final SearchCountRequest searchCountRequest = ; // SearchCountRequest | 

try {
    final response = api.searchCount(searchCountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->searchCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchCountRequest** | [**SearchCountRequest**](SearchCountRequest.md)|  | 

### Return type

[**SearchCount200Response**](SearchCount200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGet**
> SearchGet200Response searchGet(searchGetRequest)

Get a specific indexed item by ID

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final SearchGetRequest searchGetRequest = ; // SearchGetRequest | 

try {
    final response = api.searchGet(searchGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->searchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchGetRequest** | [**SearchGetRequest**](SearchGetRequest.md)|  | 

### Return type

[**SearchGet200Response**](SearchGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUpdate**
> CacheSet200Response searchUpdate(searchUpdateRequest)

Update an existing indexed item

Updates a previously ingested item by re-ingesting with the same ID. The Vectorize upsert operation is idempotent — re-ingesting with the same ID replaces the existing vector and metadata. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAIApi();
final SearchUpdateRequest searchUpdateRequest = ; // SearchUpdateRequest | 

try {
    final response = api.searchUpdate(searchUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AIApi->searchUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchUpdateRequest** | [**SearchUpdateRequest**](SearchUpdateRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

