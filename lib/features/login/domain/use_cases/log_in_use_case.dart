import 'package:med_app/features/login/domain/repositories/log_in_repository.dart';

class LogInUseCase {
  final LogInRepository logInRepository;

  LogInUseCase(this.logInRepository);

  execute(String email, String password) async {
    return await logInRepository.logIn(email, password);
  }
}
