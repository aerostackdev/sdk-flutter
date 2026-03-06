import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for StorageApi
void main() {
  final instance = AerostackSdk().getStorageApi();

  group(StorageApi, () {
    // Copy a file to a new key
    //
    // Streams the source file directly to the destination without buffering in memory. Both source and destination must be within your project's storage namespace. 
    //
    //Future<StorageCopy200Response> storageCopy(StorageCopyRequest storageCopyRequest) async
    test('test storageCopy', () async {
      // TODO
    });

    // Delete a file from storage
    //
    //Future<CacheSet200Response> storageDelete(StorageGetRequest storageGetRequest) async
    test('test storageDelete', () async {
      // TODO
    });

    // Check if a file exists
    //
    // Uses a lightweight HEAD request — more efficient than `get` for existence checks.
    //
    //Future<StorageExists200Response> storageExists(StorageGetRequest storageGetRequest) async
    test('test storageExists', () async {
      // TODO
    });

    // Download file from storage
    //
    // Returns the raw binary content of the file. The response body is the file data with the appropriate `Content-Type` header set. Returns 404 if the key does not exist.  **Note for SDK users**: `storage.get()` returns the raw `Response` object — use `.arrayBuffer()`, `.blob()`, or `.text()` to read the content. 
    //
    //Future<Uint8List> storageGet(StorageGetRequest storageGetRequest) async
    test('test storageGet', () async {
      // TODO
    });

    // Get file metadata without downloading content
    //
    //Future<StorageMetadata> storageGetMetadata(StorageGetRequest storageGetRequest) async
    test('test storageGetMetadata', () async {
      // TODO
    });

    // Get public CDN URL for a stored file
    //
    // Returns the public CDN URL for the given storage key without downloading the file content.
    //
    //Future<StorageUpload200Response> storageGetUrl(StorageGetRequest storageGetRequest) async
    test('test storageGetUrl', () async {
      // TODO
    });

    // List stored files with prefix
    //
    // Returns paginated list of files matching an optional prefix. Uses cursor-based pagination.
    //
    //Future<StorageListResult> storageList(StorageListRequest storageListRequest) async
    test('test storageList', () async {
      // TODO
    });

    // Move a file to a new key
    //
    // Copies the source file to the destination then deletes the source. Not atomic — if the delete fails after a successful copy, both keys will exist. 
    //
    //Future<StorageMove200Response> storageMove(StorageMoveRequest storageMoveRequest) async
    test('test storageMove', () async {
      // TODO
    });

    // Upload file to storage
    //
    //Future<StorageUpload200Response> storageUpload(MultipartFile file, String key, { String contentType }) async
    test('test storageUpload', () async {
      // TODO
    });

  });
}
