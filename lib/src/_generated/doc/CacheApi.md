# aerostack_sdk.api.CacheApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cacheDelete**](CacheApi.md#cachedelete) | **POST** /cache/delete | Delete cached value
[**cacheDeleteMany**](CacheApi.md#cachedeletemany) | **POST** /cache/deleteMany | Delete multiple cached values in one request
[**cacheExpire**](CacheApi.md#cacheexpire) | **POST** /cache/expire | Update TTL of an existing cache key
[**cacheFlush**](CacheApi.md#cacheflush) | **POST** /cache/flush | Flush all keys matching a prefix
[**cacheGet**](CacheApi.md#cacheget) | **POST** /cache/get | Get cached value
[**cacheGetMany**](CacheApi.md#cachegetmany) | **POST** /cache/getMany | Get multiple cached values in one request
[**cacheIncrement**](CacheApi.md#cacheincrement) | **POST** /cache/increment | Atomically increment a numeric counter
[**cacheKeys**](CacheApi.md#cachekeys) | **POST** /cache/keys | Get all keys matching prefix
[**cacheList**](CacheApi.md#cachelist) | **POST** /cache/list | List cache keys with prefix
[**cacheSet**](CacheApi.md#cacheset) | **POST** /cache/set | Set cached value
[**cacheSetMany**](CacheApi.md#cachesetmany) | **POST** /cache/setMany | Set multiple cached values in one request


# **cacheDelete**
> CacheSet200Response cacheDelete(cacheGetRequest)

Delete cached value

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheGetRequest cacheGetRequest = ; // CacheGetRequest | 

try {
    final response = api.cacheDelete(cacheGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheGetRequest** | [**CacheGetRequest**](CacheGetRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheDeleteMany**
> CacheDeleteMany200Response cacheDeleteMany(cacheDeleteManyRequest)

Delete multiple cached values in one request

Delete up to 500 keys in a single call.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheDeleteManyRequest cacheDeleteManyRequest = ; // CacheDeleteManyRequest | 

try {
    final response = api.cacheDeleteMany(cacheDeleteManyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheDeleteMany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheDeleteManyRequest** | [**CacheDeleteManyRequest**](CacheDeleteManyRequest.md)|  | 

### Return type

[**CacheDeleteMany200Response**](CacheDeleteMany200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheExpire**
> CacheSet200Response cacheExpire(cacheExpireRequest)

Update TTL of an existing cache key

Updates the expiration time of an existing key. Internally performs a get-then-put since KV has no native TTL-update operation. Note: not atomic — a concurrent write between get and put may be lost. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheExpireRequest cacheExpireRequest = ; // CacheExpireRequest | 

try {
    final response = api.cacheExpire(cacheExpireRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheExpire: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheExpireRequest** | [**CacheExpireRequest**](CacheExpireRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheFlush**
> CacheFlush200Response cacheFlush(cacheFlushRequest)

Flush all keys matching a prefix

Deletes all cache keys matching the given prefix (or all project keys if no prefix). This operation is irreversible. Hard cap of 10,000 keys per flush. Rate limited to 5 requests per minute. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheFlushRequest cacheFlushRequest = ; // CacheFlushRequest | 

try {
    final response = api.cacheFlush(cacheFlushRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheFlush: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheFlushRequest** | [**CacheFlushRequest**](CacheFlushRequest.md)|  | 

### Return type

[**CacheFlush200Response**](CacheFlush200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheGet**
> CacheGet200Response cacheGet(cacheGetRequest)

Get cached value

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheGetRequest cacheGetRequest = ; // CacheGetRequest | 

try {
    final response = api.cacheGet(cacheGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheGetRequest** | [**CacheGetRequest**](CacheGetRequest.md)|  | 

### Return type

[**CacheGet200Response**](CacheGet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheGetMany**
> CacheGetMany200Response cacheGetMany(cacheGetManyRequest)

Get multiple cached values in one request

Fetch up to 100 keys in a single call. More efficient than sequential gets.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheGetManyRequest cacheGetManyRequest = ; // CacheGetManyRequest | 

try {
    final response = api.cacheGetMany(cacheGetManyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheGetMany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheGetManyRequest** | [**CacheGetManyRequest**](CacheGetManyRequest.md)|  | 

### Return type

[**CacheGetMany200Response**](CacheGetMany200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheIncrement**
> CacheIncrement200Response cacheIncrement(cacheIncrementRequest)

Atomically increment a numeric counter

Increments a numeric cache value by the given amount (default 1). If the key does not exist, initializes it to `initialValue` (default 0) before incrementing. Uses read-modify-write — not atomic under high concurrency. Suitable for counters where occasional drift is acceptable (page views, likes). Not suitable for inventory or financial counters where exact accuracy is critical. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheIncrementRequest cacheIncrementRequest = ; // CacheIncrementRequest | 

try {
    final response = api.cacheIncrement(cacheIncrementRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheIncrement: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheIncrementRequest** | [**CacheIncrementRequest**](CacheIncrementRequest.md)|  | 

### Return type

[**CacheIncrement200Response**](CacheIncrement200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheKeys**
> CacheKeys200Response cacheKeys(cacheKeysRequest)

Get all keys matching prefix

Auto-paginates internally and returns all matching keys in one response. Hard cap of 10,000 keys. For large keyspaces use `/cache/list` with cursors. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheKeysRequest cacheKeysRequest = ; // CacheKeysRequest | 

try {
    final response = api.cacheKeys(cacheKeysRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheKeysRequest** | [**CacheKeysRequest**](CacheKeysRequest.md)|  | 

### Return type

[**CacheKeys200Response**](CacheKeys200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheList**
> CacheListResult cacheList(cacheListRequest)

List cache keys with prefix

Returns paginated list of cache keys matching an optional prefix. Keys are isolated per project — you only see keys belonging to your project. Use `cursor` from the response to fetch the next page. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheListRequest cacheListRequest = ; // CacheListRequest | 

try {
    final response = api.cacheList(cacheListRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheListRequest** | [**CacheListRequest**](CacheListRequest.md)|  | 

### Return type

[**CacheListResult**](CacheListResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheSet**
> CacheSet200Response cacheSet(cacheSetRequest)

Set cached value

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheSetRequest cacheSetRequest = ; // CacheSetRequest | 

try {
    final response = api.cacheSet(cacheSetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheSet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheSetRequest** | [**CacheSetRequest**](CacheSetRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cacheSetMany**
> CacheSetMany200Response cacheSetMany(cacheSetManyRequest)

Set multiple cached values in one request

Store up to 100 key-value pairs in a single call.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getCacheApi();
final CacheSetManyRequest cacheSetManyRequest = ; // CacheSetManyRequest | 

try {
    final response = api.cacheSetMany(cacheSetManyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CacheApi->cacheSetMany: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cacheSetManyRequest** | [**CacheSetManyRequest**](CacheSetManyRequest.md)|  | 

### Return type

[**CacheSetMany200Response**](CacheSetMany200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

