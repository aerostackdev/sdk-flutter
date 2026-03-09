# aerostack_sdk.api.AuthenticationApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authSignin**](AuthenticationApi.md#authsignin) | **POST** /auth/signin | Sign in user
[**authSignup**](AuthenticationApi.md#authsignup) | **POST** /auth/signup | Sign up new user


# **authSignin**
> AuthResponse authSignin(authSigninRequest)

Sign in user

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAuthenticationApi();
final AuthSigninRequest authSigninRequest = ; // AuthSigninRequest | 

try {
    final response = api.authSignin(authSigninRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->authSignin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authSigninRequest** | [**AuthSigninRequest**](AuthSigninRequest.md)|  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authSignup**
> AuthResponse authSignup(authSignupRequest)

Sign up new user

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getAuthenticationApi();
final AuthSignupRequest authSignupRequest = ; // AuthSignupRequest | 

try {
    final response = api.authSignup(authSignupRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->authSignup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authSignupRequest** | [**AuthSignupRequest**](AuthSignupRequest.md)|  | 

### Return type

[**AuthResponse**](AuthResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

