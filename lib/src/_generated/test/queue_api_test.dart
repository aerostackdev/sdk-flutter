import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for QueueApi
void main() {
  final instance = AerostackSdk().getQueueApi();

  group(QueueApi, () {
    // Cancel a queued job
    //
    // Marks a job as `cancelled` in the job store. This is advisory only — if a consumer Worker has already picked up the job, it will still execute unless the consumer explicitly checks job status before processing. Cannot cancel jobs already in `completed` or `failed` state. 
    //
    //Future<QueueCancelJob200Response> queueCancelJob(QueueGetJobRequest queueGetJobRequest) async
    test('test queueCancelJob', () async {
      // TODO
    });

    // Add job to queue
    //
    // Enqueues a job for background processing. Returns a `jobId` that can be used with `/queue/job` to track status. Job metadata is persisted for 7 days. 
    //
    //Future<QueueEnqueue201Response> queueEnqueue(QueueEnqueueRequest queueEnqueueRequest) async
    test('test queueEnqueue', () async {
      // TODO
    });

    // Get job status by ID
    //
    //Future<QueueGetJob200Response> queueGetJob(QueueGetJobRequest queueGetJobRequest) async
    test('test queueGetJob', () async {
      // TODO
    });

    // List jobs with optional filters
    //
    // Returns paginated job records. Filter by `status` (queued, processing, completed, failed, cancelled) or `type`. Uses cursor-based pagination. Job metadata is retained for 7 days. 
    //
    //Future<QueueListJobs200Response> queueListJobs(QueueListJobsRequest queueListJobsRequest) async
    test('test queueListJobs', () async {
      // TODO
    });

  });
}
