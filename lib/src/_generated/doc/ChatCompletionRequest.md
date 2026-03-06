# aerostack_sdk.model.ChatCompletionRequest

## Load the model package
```dart
import 'package:aerostack_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**model** | **String** | Model identifier (provider-specific) | [optional] 
**messages** | [**BuiltList&lt;ChatMessage&gt;**](ChatMessage.md) |  | 
**stream** | **bool** | When true, returns a server-sent events (SSE) stream of token deltas. Each event is `data: <json>\\n\\n`. The stream ends with `data: [DONE]\\n\\n`.  | [optional] [default to false]
**streamOptions** | [**ChatCompletionRequestStreamOptions**](ChatCompletionRequestStreamOptions.md) |  | [optional] 
**temperature** | **num** | Sampling temperature (0=deterministic, 2=creative) | [optional] 
**maxTokens** | **int** | Maximum tokens to generate | [optional] 
**topP** | **num** | Nucleus sampling probability | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


