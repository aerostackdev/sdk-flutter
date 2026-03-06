import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';

// tests for CacheListRequest
void main() {
  final instance = CacheListRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CacheListRequest, () {
    // Key prefix to filter by (e.g. \"users:\")
    // String prefix
    test('to test the property `prefix`', () async {
      // TODO
    });

    // Max keys to return per page (default 100, max 1000)
    // int limit (default value: 100)
    test('to test the property `limit`', () async {
      // TODO
    });

    // Pagination cursor from previous response
    // String cursor
    test('to test the property `cursor`', () async {
      // TODO
    });

  });
}
