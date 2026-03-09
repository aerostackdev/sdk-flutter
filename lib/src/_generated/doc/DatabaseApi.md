# aerostack_sdk.api.DatabaseApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dbBatch**](DatabaseApi.md#dbbatch) | **POST** /db/batch | Execute multiple SQL queries in batch
[**dbQuery**](DatabaseApi.md#dbquery) | **POST** /db/query | Execute SQL query


# **dbBatch**
> DbBatchResult dbBatch(dbBatchRequest)

Execute multiple SQL queries in batch

Run up to 25 SQL queries in a single request. Each query runs through the same sanitization and project-isolation pipeline as `/db/query`. Failures are partial — successful queries still return results even if others fail. Batching is more efficient than sequential individual calls. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getDatabaseApi();
final DbBatchRequest dbBatchRequest = ; // DbBatchRequest | 

try {
    final response = api.dbBatch(dbBatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DatabaseApi->dbBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dbBatchRequest** | [**DbBatchRequest**](DbBatchRequest.md)|  | 

### Return type

[**DbBatchResult**](DbBatchResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dbQuery**
> DbQueryResult dbQuery(dbQueryRequest, xRequestID, xSDKVersion)

Execute SQL query

Run a SQL query against your project database

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getDatabaseApi();
final DbQueryRequest dbQueryRequest = ; // DbQueryRequest | 
final String xRequestID = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique request tracing ID
final String xSDKVersion = 0.5.0; // String | SDK version string

try {
    final response = api.dbQuery(dbQueryRequest, xRequestID, xSDKVersion);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DatabaseApi->dbQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dbQueryRequest** | [**DbQueryRequest**](DbQueryRequest.md)|  | 
 **xRequestID** | **String**| Unique request tracing ID | [optional] 
 **xSDKVersion** | **String**| SDK version string | [optional] 

### Return type

[**DbQueryResult**](DbQueryResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

