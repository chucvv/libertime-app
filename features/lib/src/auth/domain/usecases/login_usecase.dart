import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/credential.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:common/common.dart';

class LoginUseCase extends UseCase<Credential, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, Credential>> call(LoginParams params) {
    return _authRepository.authenticate(params._username, params._password);
  }
}

class LoginParams {
  final String _username;
  final String _password;

  LoginParams(this._username, this._password);
}
