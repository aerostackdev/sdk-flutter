import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for AIApi
void main() {
  final instance = AerostackSdk().getAIApi();

  group(AIApi, () {
    // Generate AI chat completion
    //
    // Generate a chat completion using the project's configured AI model. Set `stream: true` to receive a server-sent events (SSE) stream of token deltas in OpenAI-compatible format. Each data frame contains a JSON object with `choices[0].delta.content`. The stream ends with `data: [DONE]`. The final frame (when `stream_options.include_usage` is true) includes a `usage` object with `total_tokens`. 
    //
    //Future<ChatCompletionResponse> aiChat(ChatCompletionRequest chatCompletionRequest) async
    test('test aiChat', () async {
      // TODO
    });

    // Update search configuration
    //
    //Future<CacheSet200Response> configure(ConfigureRequest configureRequest) async
    test('test configure', () async {
      // TODO
    });

    // Delete item by ID
    //
    //Future<CacheSet200Response> delete(DeleteRequest deleteRequest) async
    test('test delete', () async {
      // TODO
    });

    // Delete all items of a type
    //
    //Future<CacheSet200Response> deleteByType(DeleteByTypeRequest deleteByTypeRequest) async
    test('test deleteByType', () async {
      // TODO
    });

    // Ingest content into managed search index
    //
    //Future<CacheSet200Response> ingest(IngestRequest ingestRequest) async
    test('test ingest', () async {
      // TODO
    });

    // List distinct types and counts
    //
    //Future<ListTypes200Response> listTypes() async
    test('test listTypes', () async {
      // TODO
    });

    // Search managed index
    //
    //Future<Query200Response> query(QueryRequest queryRequest) async
    test('test query', () async {
      // TODO
    });

    // Count indexed items
    //
    // Returns total count of indexed items, optionally filtered by type.
    //
    //Future<SearchCount200Response> searchCount(SearchCountRequest searchCountRequest) async
    test('test searchCount', () async {
      // TODO
    });

    // Get a specific indexed item by ID
    //
    //Future<SearchGet200Response> searchGet(SearchGetRequest searchGetRequest) async
    test('test searchGet', () async {
      // TODO
    });

    // Update an existing indexed item
    //
    // Updates a previously ingested item by re-ingesting with the same ID. The Vectorize upsert operation is idempotent — re-ingesting with the same ID replaces the existing vector and metadata. 
    //
    //Future<CacheSet200Response> searchUpdate(SearchUpdateRequest searchUpdateRequest) async
    test('test searchUpdate', () async {
      // TODO
    });

  });
}
