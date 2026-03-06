import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';

// tests for ChatCompletionRequest
void main() {
  final instance = ChatCompletionRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ChatCompletionRequest, () {
    // Model identifier (provider-specific)
    // String model
    test('to test the property `model`', () async {
      // TODO
    });

    // BuiltList<ChatMessage> messages
    test('to test the property `messages`', () async {
      // TODO
    });

    // When true, returns a server-sent events (SSE) stream of token deltas. Each event is `data: <json>\\n\\n`. The stream ends with `data: [DONE]\\n\\n`. 
    // bool stream (default value: false)
    test('to test the property `stream`', () async {
      // TODO
    });

    // ChatCompletionRequestStreamOptions streamOptions
    test('to test the property `streamOptions`', () async {
      // TODO
    });

    // Sampling temperature (0=deterministic, 2=creative)
    // num temperature
    test('to test the property `temperature`', () async {
      // TODO
    });

    // Maximum tokens to generate
    // int maxTokens
    test('to test the property `maxTokens`', () async {
      // TODO
    });

    // Nucleus sampling probability
    // num topP
    test('to test the property `topP`', () async {
      // TODO
    });

  });
}
