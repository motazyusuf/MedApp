import 'package:dio/dio.dart';

abstract class LogInDataSource {
  Future<Response> logIn(String email, String password);
}

class OnlineDataSource extends LogInDataSource {
  Dio dio;

  OnlineDataSource(this.dio);

  @override
  Future<Response> logIn(String email, String password) async {
    return await dio.post(
      "auth/login",
      data: {"email": email, "password": password},
    );
    throw UnimplementedError();
  }
}
