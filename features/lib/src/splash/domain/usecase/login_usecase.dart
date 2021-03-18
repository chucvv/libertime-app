import 'package:common/common.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';

class LoginUseCase extends UseCase<NoParams, UserEntity> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);
  @override
  Future<Result<UserEntity>> call(NoParams noValue) {
    return Result.guardFuture(_authRepository.loginUser);
  }
}
