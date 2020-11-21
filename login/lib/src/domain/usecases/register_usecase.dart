import 'package:dartz/dartz.dart';
import 'package:core_packages/core.dart';
import 'package:login/src/domain/repositories/user_repository.dart';

class RegisterUseCase extends UseCase<bool, RegisterParams> {
  final UserRepository _userRepository;

  RegisterUseCase(this._userRepository);

  @override
  Future<Either<Failure, bool>> call(RegisterParams params) {
    return _userRepository.addUser(params._userName, params._password);
  }
}

class RegisterParams {
  final String _userName;
  final String _password;

  RegisterParams(this._userName, this._password);
}
