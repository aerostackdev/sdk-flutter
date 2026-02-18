# Flutter SDK Generation Guide

This guide provides steps for a developer with Java and Flutter installed to regenerate and release the Aerostack Flutter SDK.

## Prerequisites

- **Java Runtime Environment (JRE)**: Required for `openapi-generator-cli`.
- **Flutter/Dart SDK**: Required to build and verify the package.
- **Node.js**: Required to run the generator via `npx`.

## Step-by-Step Instructions

1.  **Navigate to the SDKs root directory**:
    ```bash
    cd sdks
    ```

2.  **Ensure the OpenAPI spec is updated**:
    Verify that `openapi.json` (at the root or specified location) is current.

3.  **Run the Flutter generation command**:
    Run the following command from the `sdks` root:
    ```bash
    npx @openapitools/openapi-generator-cli generate \
      -i openapi.json \
      -g dart-dio \
      -o packages/flutter \
      --additional-properties=pubName=aerostack_flutter,pubAuthor=Aerostack
    ```
    *(Note: If the spec file is named differently, update the `-i` flag.)*

4.  **Install dependencies**:
    ```bash
    cd packages/flutter
    flutter pub get
    ```

5.  **Run code generation (if applicable)**:
    If the generated code uses `json_serializable`, run:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

6.  **Verify the build**:
    Ensure there are no analyzer errors:
    ```bash
    flutter analyze
    ```

7.  **Publish (Optional)**:
    If ready to release to pub.dev:
    ```bash
    flutter pub publish
    ```

## Troubleshooting

- **Missing Java**: If you see "Java not found", ensure `JAVA_HOME` is set correctly and `java` is in your `PATH`.
- **Package Name Mismatch**: The generator might use `aerostack_flutter`. Ensure this matches your intended name in `pubspec.yaml`.
