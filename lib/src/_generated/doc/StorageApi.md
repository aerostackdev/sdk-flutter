# aerostack_sdk.api.StorageApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**storageCopy**](StorageApi.md#storagecopy) | **POST** /storage/copy | Copy a file to a new key
[**storageDelete**](StorageApi.md#storagedelete) | **POST** /storage/delete | Delete a file from storage
[**storageExists**](StorageApi.md#storageexists) | **POST** /storage/exists | Check if a file exists
[**storageGet**](StorageApi.md#storageget) | **POST** /storage/get | Download file from storage
[**storageGetMetadata**](StorageApi.md#storagegetmetadata) | **POST** /storage/getMetadata | Get file metadata without downloading content
[**storageGetUrl**](StorageApi.md#storagegeturl) | **POST** /storage/getUrl | Get public CDN URL for a stored file
[**storageList**](StorageApi.md#storagelist) | **POST** /storage/list | List stored files with prefix
[**storageMove**](StorageApi.md#storagemove) | **POST** /storage/move | Move a file to a new key
[**storageUpload**](StorageApi.md#storageupload) | **POST** /storage/upload | Upload file to storage


# **storageCopy**
> StorageCopy200Response storageCopy(storageCopyRequest)

Copy a file to a new key

Streams the source file directly to the destination without buffering in memory. Both source and destination must be within your project's storage namespace. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageCopyRequest storageCopyRequest = ; // StorageCopyRequest | 

try {
    final response = api.storageCopy(storageCopyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageCopy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageCopyRequest** | [**StorageCopyRequest**](StorageCopyRequest.md)|  | 

### Return type

[**StorageCopy200Response**](StorageCopy200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageDelete**
> CacheSet200Response storageDelete(storageGetRequest)

Delete a file from storage

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageGetRequest storageGetRequest = ; // StorageGetRequest | 

try {
    final response = api.storageDelete(storageGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageGetRequest** | [**StorageGetRequest**](StorageGetRequest.md)|  | 

### Return type

[**CacheSet200Response**](CacheSet200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageExists**
> StorageExists200Response storageExists(storageGetRequest)

Check if a file exists

Uses a lightweight HEAD request — more efficient than `get` for existence checks.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageGetRequest storageGetRequest = ; // StorageGetRequest | 

try {
    final response = api.storageExists(storageGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageExists: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageGetRequest** | [**StorageGetRequest**](StorageGetRequest.md)|  | 

### Return type

[**StorageExists200Response**](StorageExists200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGet**
> Uint8List storageGet(storageGetRequest)

Download file from storage

Returns the raw binary content of the file. The response body is the file data with the appropriate `Content-Type` header set. Returns 404 if the key does not exist.  **Note for SDK users**: `storage.get()` returns the raw `Response` object — use `.arrayBuffer()`, `.blob()`, or `.text()` to read the content. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageGetRequest storageGetRequest = ; // StorageGetRequest | 

try {
    final response = api.storageGet(storageGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageGetRequest** | [**StorageGetRequest**](StorageGetRequest.md)|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetMetadata**
> StorageMetadata storageGetMetadata(storageGetRequest)

Get file metadata without downloading content

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageGetRequest storageGetRequest = ; // StorageGetRequest | 

try {
    final response = api.storageGetMetadata(storageGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageGetMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageGetRequest** | [**StorageGetRequest**](StorageGetRequest.md)|  | 

### Return type

[**StorageMetadata**](StorageMetadata.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageGetUrl**
> StorageUpload200Response storageGetUrl(storageGetRequest)

Get public CDN URL for a stored file

Returns the public CDN URL for the given storage key without downloading the file content.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageGetRequest storageGetRequest = ; // StorageGetRequest | 

try {
    final response = api.storageGetUrl(storageGetRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageGetUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageGetRequest** | [**StorageGetRequest**](StorageGetRequest.md)|  | 

### Return type

[**StorageUpload200Response**](StorageUpload200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageList**
> StorageListResult storageList(storageListRequest)

List stored files with prefix

Returns paginated list of files matching an optional prefix. Uses cursor-based pagination.

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageListRequest storageListRequest = ; // StorageListRequest | 

try {
    final response = api.storageList(storageListRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageListRequest** | [**StorageListRequest**](StorageListRequest.md)|  | 

### Return type

[**StorageListResult**](StorageListResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageMove**
> StorageMove200Response storageMove(storageMoveRequest)

Move a file to a new key

Copies the source file to the destination then deletes the source. Not atomic — if the delete fails after a successful copy, both keys will exist. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final StorageMoveRequest storageMoveRequest = ; // StorageMoveRequest | 

try {
    final response = api.storageMove(storageMoveRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageMove: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageMoveRequest** | [**StorageMoveRequest**](StorageMoveRequest.md)|  | 

### Return type

[**StorageMove200Response**](StorageMove200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **storageUpload**
> StorageUpload200Response storageUpload(file, key, contentType)

Upload file to storage

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getStorageApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 
final String key = key_example; // String | Storage key/path
final String contentType = contentType_example; // String | 

try {
    final response = api.storageUpload(file, key, contentType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StorageApi->storageUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 
 **key** | **String**| Storage key/path | 
 **contentType** | **String**|  | [optional] 

### Return type

[**StorageUpload200Response**](StorageUpload200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

