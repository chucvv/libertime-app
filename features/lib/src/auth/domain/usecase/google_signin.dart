import 'package:common/common.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';

class GoogleSigninUseCase extends UseCase<NoParams, UserEntity> {
  final AuthRepository _authRepository;

  GoogleSigninUseCase(this._authRepository);

  @override
  Future<Result<UserEntity>> call(NoParams noValue) =>
      Result.guardFuture(_authRepository.signInGoogle);
}
