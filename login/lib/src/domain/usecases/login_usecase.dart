import 'package:dartz/dartz.dart';
import 'package:core_packages/core.dart';
import 'package:login/src/domain/entities/user.dart';
import 'package:login/src/domain/repositories/user_repository.dart';

class LoginUseCase extends UseCase<User, LoginParams> {
  final UserRepository _userRepository;

  LoginUseCase(this._userRepository);

  @override
  Future<Either<Failure, User>> call(LoginParams params) {
    return _userRepository.getUser(params._userName, params._password);
  }
}

class LoginParams {
  final String _userName;
  final String _password;

  LoginParams(this._userName, this._password);
}
