import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for DatabaseApi
void main() {
  final instance = AerostackSdk().getDatabaseApi();

  group(DatabaseApi, () {
    // Execute multiple SQL queries in batch
    //
    // Run up to 25 SQL queries in a single request. Each query runs through the same sanitization and project-isolation pipeline as `/db/query`. Failures are partial — successful queries still return results even if others fail. Batching is more efficient than sequential individual calls. 
    //
    //Future<DbBatchResult> dbBatch(DbBatchRequest dbBatchRequest) async
    test('test dbBatch', () async {
      // TODO
    });

    // Execute SQL query
    //
    // Run a SQL query against your project database
    //
    //Future<DbQueryResult> dbQuery(DbQueryRequest dbQueryRequest, { String xRequestID, String xSDKVersion }) async
    test('test dbQuery', () async {
      // TODO
    });

  });
}
