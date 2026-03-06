import 'package:test/test.dart';
import 'package:aerostack_sdk/aerostack_sdk.dart';


/// tests for AuthenticationApi
void main() {
  final instance = AerostackSdk().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Sign in user
    //
    //Future<AuthResponse> authSignin(AuthSigninRequest authSigninRequest) async
    test('test authSignin', () async {
      // TODO
    });

    // Sign up new user
    //
    //Future<AuthResponse> authSignup(AuthSignupRequest authSignupRequest) async
    test('test authSignup', () async {
      // TODO
    });

  });
}
