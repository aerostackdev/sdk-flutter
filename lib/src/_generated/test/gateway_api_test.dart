import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for GatewayApi
void main() {
  final instance = AerostackSdk().getGatewayApi();

  group(GatewayApi, () {
    // Log Gateway usage
    //
    // Manually log tokens or custom metric usage for a Gateway API
    //
    //Future<GatewayBillingLog200Response> gatewayBillingLog(GatewayBillingLogRequest gatewayBillingLogRequest) async
    test('test gatewayBillingLog', () async {
      // TODO
    });

    // Gateway chat completions (OpenAI-compatible)
    //
    // OpenAI-compatible chat completions endpoint routed through a developer Gateway API. Supports streaming SSE, RAG pipeline, pre/post hooks, token metering, and consumer-key or JWT authentication.  The Gateway API slug identifies which developer-configured pipeline to use. Authenticate with a `consumerKey` (Bearer token) issued from the Gateway's consumer management, or with a user JWT from Aerostack Auth.  Streaming is supported — set `stream: true` to receive SSE token deltas. 
    //
    //Future<ChatCompletionResponse> gatewayChatCompletions(String apiSlug, ChatCompletionRequest chatCompletionRequest) async
    test('test gatewayChatCompletions', () async {
      // TODO
    });

    // Get consumer token wallet balance
    //
    // Returns the remaining token balance and total consumed for the authenticated consumer (identified by Bearer token or consumer key). 
    //
    //Future<GatewayGetWallet200Response> gatewayGetWallet(String apiSlug) async
    test('test gatewayGetWallet', () async {
      // TODO
    });

  });
}
