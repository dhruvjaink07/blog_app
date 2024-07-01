import 'package:blogs_app/core/error/failure.dart';
import 'package:blogs_app/core/usecase/usecase.dart';
import 'package:blogs_app/features/auth/domain/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements Usecase<String, UserSignUpParams> {
  final AuthRepository authRepository;

  UserSignUp({required this.authRepository});

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signUpWithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
}

class UserSignUpParams {
  final String email;
  final String name;
  final String password;

  UserSignUpParams(
      {required this.email, required this.name, required this.password});
}
