import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';

// tests for ChatCompletionRequestStreamOptions
void main() {
  final instance = ChatCompletionRequestStreamOptionsBuilder();
  // TODO add properties to the builder and call build()

  group(ChatCompletionRequestStreamOptions, () {
    // Include token usage in the final SSE frame when streaming. The last data frame before [DONE] will contain a `usage` object. 
    // bool includeUsage (default value: false)
    test('to test the property `includeUsage`', () async {
      // TODO
    });

  });
}
