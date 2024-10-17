import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:med_app/core/failure/failure.dart';
import 'package:med_app/features/login/data/data_sources/sign_in_data_source/log_in_data_source.dart';
import 'package:med_app/features/login/domain/repositories/log_in_repository.dart';

class LogInRepositoryImp implements LogInRepository {
  LogInDataSource logInDataSource;

  LogInRepositoryImp(this.logInDataSource);

  Future<Either<Failure, String>> logIn(String email, String password) async {
    try {
      Response response = await logInDataSource.logIn(email, password);
      if (response.statusCode == 200) {
        // success
        return Right(response.data["data"]["token"]);
      } else {
        return Left(Failure(
            statusCode: response.statusCode.toString(),
            errorMessage: response.data["message"]));
      }
    } on DioException catch (e) {
      return Left(Failure(
          errorMessage: e.error.toString(),
          statusCode: e.response?.statusCode.toString() ?? " "));
      // failure
    }
  }
}
