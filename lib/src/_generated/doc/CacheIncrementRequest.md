# aerostack_sdk.model.CacheIncrementRequest

## Load the model package
```dart
import 'package:aerostack_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** |  | 
**amount** | **int** | Amount to increment by (default 1, can be negative) | [optional] [default to 1]
**initialValue** | **int** | Starting value if key does not exist (default 0) | [optional] [default to 0]
**ttl** | **int** | TTL in seconds for newly created keys | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


