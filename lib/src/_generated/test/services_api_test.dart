import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for ServicesApi
void main() {
  final instance = AerostackSdk().getServicesApi();

  group(ServicesApi, () {
    // Invoke another service
    //
    //Future<ServicesInvoke200Response> servicesInvoke(ServicesInvokeRequest servicesInvokeRequest) async
    test('test servicesInvoke', () async {
      // TODO
    });

  });
}
