import 'package:dio/dio.dart';
import '../models/auth_models.dart';

class AuthService {
  final Dio dio;
  AuthService(this.dio);

  Future<AuthResponse> signUp(String email, String password, {String? name, Map<String, dynamic>? metadata}) async {
    final Response response = await dio.post(
      '/auth/signup',
      data: {
        'email': email,
        'password': password,
        if (name != null) 'name': name,
        if (metadata != null) 'metadata': metadata
      },
    );
    return AuthResponse.fromJson(response.data);
  }

  Future<AuthResponse> signIn(String email, String password) async {
    final Response response = await dio.post(
      '/auth/signin',
      data: {'email': email, 'password': password},
    );
    return AuthResponse.fromJson(response.data);
  }
}