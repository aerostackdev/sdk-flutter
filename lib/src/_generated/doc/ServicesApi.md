# aerostack_sdk.api.ServicesApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**servicesInvoke**](ServicesApi.md#servicesinvoke) | **POST** /services/invoke | Invoke another service


# **servicesInvoke**
> ServicesInvoke200Response servicesInvoke(servicesInvokeRequest)

Invoke another service

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getServicesApi();
final ServicesInvokeRequest servicesInvokeRequest = ; // ServicesInvokeRequest | 

try {
    final response = api.servicesInvoke(servicesInvokeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServicesApi->servicesInvoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicesInvokeRequest** | [**ServicesInvokeRequest**](ServicesInvokeRequest.md)|  | 

### Return type

[**ServicesInvoke200Response**](ServicesInvoke200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

