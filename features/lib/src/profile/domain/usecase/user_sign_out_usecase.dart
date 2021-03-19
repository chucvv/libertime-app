import 'package:common/common.dart';
import 'package:features/src/auth/domain/entity/auth_provider_enum.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';

class UserSignOutUseCase extends UseCase<UserEntity, void> {
  final AuthRepository _authRepository;

  UserSignOutUseCase(this._authRepository);

  @override
  Future<Result<void>> call(UserEntity user) => Result.guardFuture(() {
        if (user.provider == AuthProviderEnum.facebook) {
          return _authRepository.signOutFacebook(user.uid);
        } else {
          return _authRepository.signOutGoogle(user.uid);
        }
      });
}
