import 'package:dartz/dartz.dart';
import 'package:core_packages/core.dart';
import 'package:signin/src/domain/entities/user.dart';
import 'package:signin/src/domain/repositories/auth_repository.dart';

class LoginUseCase extends UseCase<Credentials, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, Credentials>> call(LoginParams params) {
    return _authRepository.authenticate(params._username, params._password);
  }
}

class LoginParams {
  final String _username;
  final String _password;

  LoginParams(this._username, this._password);
}
