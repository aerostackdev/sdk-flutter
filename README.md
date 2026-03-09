# Aerostack Flutter SDK

[![pub package](https://img.shields.io/pub/v/aerostack_sdk.svg)](https://pub.dev/packages/aerostack_sdk)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

The official Flutter SDK for Aerostack. Build cross-platform mobile apps with unified access to authentication, database, caching, storage, queues, and AI services.

> **Note:** This SDK is auto-generated from the [OpenAPI specification](../../spec/openapi.yaml). Do not hand-edit files in `lib/src/_generated/`.

## Features

- **Authentication** — User sign-up and sign-in with API key authorization
- **Database** — Execute SQL queries and batch operations
- **Cache** — Key-value store with TTL, bulk operations, atomic counters, and prefix-based flushing
- **Storage** — File upload, download, copy, move, delete, and metadata retrieval
- **Queue** — Background job scheduling, tracking, and cancellation
- **AI** — Chat completions, semantic search, vector ingestion, and embedding configuration
- **Gateway** — Billing logs and wallet management
- **Cross-Platform** — Works on iOS, Android, Web, macOS, Windows, and Linux

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  aerostack_sdk: ^0.1.0
```

Or install via CLI:

```bash
flutter pub add aerostack_sdk
```

## Quick Start

### Initialize the Client

```dart
import 'package:aerostack_sdk/aerostack_sdk.dart';

final client = ApiClient(
  basePath: 'https://api.aerostack.dev/v1',
);

// Configure API key
client.addDefaultHeader('X-Aerostack-Key', 'your-api-key');
```

### Authentication

```dart
final authApi = AuthenticationApi(client);

// Sign up
final signupResponse = await authApi.authSignup(
  AuthSignupRequest(
    email: 'user@example.com',
    password: 'securePassword123',
  ),
);
print('User ID: ${signupResponse?.user?.id}');

// Sign in
final signinResponse = await authApi.authSignin(
  AuthSigninRequest(
    email: 'user@example.com',
    password: 'securePassword123',
  ),
);
```

### Database Queries

```dart
final dbApi = DatabaseApi(client);

final result = await dbApi.dbQuery(
  DbQueryRequest(sql: 'SELECT * FROM todos WHERE completed = true'),
);
print('Rows: ${result?.rows}');
```

### Cache Operations

```dart
final cacheApi = CacheApi(client);

// Set a value with TTL
await cacheApi.cacheSet(CacheSetRequest(
  key: 'session:user-123',
  value: '{"name": "Alice"}',
  ttl: 3600,
));

// Get a value
final cached = await cacheApi.cacheGet(CacheGetRequest(key: 'session:user-123'));
print('Cached: ${cached?.value}');

// Bulk operations
await cacheApi.cacheDeleteMany(CacheDeleteManyRequest(keys: ['key1', 'key2']));
```

### Storage

```dart
final storageApi = StorageApi(client);

// Upload a file
await storageApi.storageUpload(file: fileBytes, key: 'photos/vacation.jpg');

// List objects
final objects = await storageApi.storageList();

// Check existence
final exists = await storageApi.storageExists(key: 'photos/vacation.jpg');
```

### Queue Jobs

```dart
final queueApi = QueueApi(client);

// Enqueue a background job
final job = await queueApi.queueEnqueue(QueueEnqueueRequest(
  queue: 'email-notifications',
  payload: {'to': 'user@example.com', 'template': 'welcome'},
));
print('Job ID: ${job?.id}');

// Check job status
final status = await queueApi.queueGetJob(jobId: job!.id!);
```

### AI Chat

```dart
final aiApi = AIApi(client);

final response = await aiApi.aiChat(AiChatRequest(
  messages: [
    AiChatRequestMessagesInner(role: 'user', content: 'Hello!'),
  ],
));
print('Reply: ${response?.choices?.first.message?.content}');
```

### Semantic Search

```dart
// Ingest content for search
await aiApi.ingest(IngestRequest(
  content: 'Flutter is a cross-platform UI toolkit',
  type: 'documentation',
  id: 'doc-001',
));

// Query the search index
final results = await aiApi.query(QueryRequest(
  query: 'cross-platform mobile development',
));
```

## Error Handling

```dart
try {
  await authApi.authSignin(AuthSigninRequest(
    email: 'user@example.com',
    password: 'wrong-password',
  ));
} on ApiException catch (e) {
  print('Status: ${e.code}');
  print('Message: ${e.message}');
}
```

## API Reference

### Available API Classes

| Class | Operations |
|-------|-----------|
| `AuthenticationApi` | `authSignin`, `authSignup` |
| `DatabaseApi` | `dbQuery`, `dbBatch` |
| `CacheApi` | `cacheGet`, `cacheSet`, `cacheDelete`, `cacheList`, `cacheKeys`, `cacheGetMany`, `cacheSetMany`, `cacheDeleteMany`, `cacheFlush`, `cacheExpire`, `cacheIncrement` |
| `StorageApi` | `storageUpload`, `storageGet`, `storageList`, `storageDelete`, `storageExists`, `storageGetMetadata`, `storageMove`, `storageCopy` |
| `QueueApi` | `queueEnqueue`, `queueGetJob`, `queueListJobs`, `queueCancelJob` |
| `AIApi` | `aiChat`, `ingest`, `query`, `delete`, `deleteByType`, `listTypes`, `configure` |
| `GatewayApi` | `gatewayBillingLog`, `gatewayGetWallet` |
| `ServicesApi` | `servicesInvoke` |

## Related Packages

| Package | Platform |
|---------|----------|
| [`@aerostack/react-native`](../react-native) | React Native mobile |
| [`@aerostack/web`](../web) | Browser / SPA |
| [`@aerostack/node`](../node) | Node.js server |

## Documentation

For full documentation, visit [docs.aerostack.dev](https://docs.aerostack.dev/sdk/flutter).

## License

MIT
