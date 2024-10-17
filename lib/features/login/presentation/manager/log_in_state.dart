part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInSuccess extends LogInState {
  String token;

  LogInSuccess(this.token);
}

final class LogInFails extends LogInState {
  Failure failure;

  LogInFails(this.failure);
}
