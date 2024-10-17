import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:med_app/core/failure/failure.dart';
import 'package:med_app/core/services/web_services.dart';
import 'package:med_app/features/login/data/data_sources/sign_in_data_source/log_in_data_source.dart';
import 'package:med_app/features/login/data/repositories_imp/log_in_repository_imp.dart';
import 'package:med_app/features/login/domain/repositories/log_in_repository.dart';
import 'package:med_app/features/login/domain/use_cases/log_in_use_case.dart';
import 'package:meta/meta.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitial());
  final WebServices webServices = WebServices();

  late LogInUseCase logInUseCase;
  late LogInRepository logInRepository;
  late LogInDataSource logInDataSource;

  Future<void> logIn(String email, String password) async {
    logInDataSource = OnlineDataSource(webServices.dio);
    logInRepository = LogInRepositoryImp(logInDataSource);
    logInUseCase = LogInUseCase(logInRepository);

    emit(LogInLoading());
    final result = await logInUseCase.execute(email, password);
    return result.fold((fail) {
      var error = fail as Failure;
      emit(LogInFails(error));
    }, (data) {
      emit(LogInSuccess(data));
    });
  }
}
