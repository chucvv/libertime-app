import 'package:common/common.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';

class FacebookSigninUseCase extends UseCase<void, UserEntity> {
  final AuthRepository _authRepository;

  FacebookSigninUseCase(this._authRepository);

  @override
  Future<Result<UserEntity>> call(void parameter) =>
      Result.guardFuture(_authRepository.signInFacebook);
}
