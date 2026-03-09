# aerostack_sdk.api.GatewayApi

## Load the API package
```dart
import 'package:aerostack_sdk/api.dart';
```

All URIs are relative to *https://api.aerostack.dev/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**gatewayBillingLog**](GatewayApi.md#gatewaybillinglog) | **POST** /gateway/billing/log | Log Gateway usage
[**gatewayChatCompletions**](GatewayApi.md#gatewaychatcompletions) | **POST** /ai/gateway/{apiSlug}/chat/completions | Gateway chat completions (OpenAI-compatible)
[**gatewayGetWallet**](GatewayApi.md#gatewaygetwallet) | **GET** /ai/gateway/me/wallet | Get consumer token wallet balance


# **gatewayBillingLog**
> GatewayBillingLog200Response gatewayBillingLog(gatewayBillingLogRequest)

Log Gateway usage

Manually log tokens or custom metric usage for a Gateway API

### Example
```dart
import 'package:aerostack_sdk/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api = AerostackSdk().getGatewayApi();
final GatewayBillingLogRequest gatewayBillingLogRequest = ; // GatewayBillingLogRequest | 

try {
    final response = api.gatewayBillingLog(gatewayBillingLogRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GatewayApi->gatewayBillingLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gatewayBillingLogRequest** | [**GatewayBillingLogRequest**](GatewayBillingLogRequest.md)|  | 

### Return type

[**GatewayBillingLog200Response**](GatewayBillingLog200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayChatCompletions**
> ChatCompletionResponse gatewayChatCompletions(apiSlug, chatCompletionRequest)

Gateway chat completions (OpenAI-compatible)

OpenAI-compatible chat completions endpoint routed through a developer Gateway API. Supports streaming SSE, RAG pipeline, pre/post hooks, token metering, and consumer-key or JWT authentication.  The Gateway API slug identifies which developer-configured pipeline to use. Authenticate with a `consumerKey` (Bearer token) issued from the Gateway's consumer management, or with a user JWT from Aerostack Auth.  Streaming is supported — set `stream: true` to receive SSE token deltas. 

### Example
```dart
import 'package:aerostack_sdk/api.dart';

final api = AerostackSdk().getGatewayApi();
final String apiSlug = my-chatbot; // String | Gateway API slug identifier
final ChatCompletionRequest chatCompletionRequest = ; // ChatCompletionRequest | 

try {
    final response = api.gatewayChatCompletions(apiSlug, chatCompletionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GatewayApi->gatewayChatCompletions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiSlug** | **String**| Gateway API slug identifier | 
 **chatCompletionRequest** | [**ChatCompletionRequest**](ChatCompletionRequest.md)|  | 

### Return type

[**ChatCompletionResponse**](ChatCompletionResponse.md)

### Authorization

[GatewayConsumerKey](../README.md#GatewayConsumerKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/event-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **gatewayGetWallet**
> GatewayGetWallet200Response gatewayGetWallet(apiSlug)

Get consumer token wallet balance

Returns the remaining token balance and total consumed for the authenticated consumer (identified by Bearer token or consumer key). 

### Example
```dart
import 'package:aerostack_sdk/api.dart';

final api = AerostackSdk().getGatewayApi();
final String apiSlug = my-chatbot; // String | Gateway API slug to scope the wallet query

try {
    final response = api.gatewayGetWallet(apiSlug);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GatewayApi->gatewayGetWallet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiSlug** | **String**| Gateway API slug to scope the wallet query | 

### Return type

[**GatewayGetWallet200Response**](GatewayGetWallet200Response.md)

### Authorization

[GatewayConsumerKey](../README.md#GatewayConsumerKey), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

