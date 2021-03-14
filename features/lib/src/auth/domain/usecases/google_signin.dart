import 'package:common/common.dart';
import 'package:features/src/auth/domain/entities/user_entity.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';

class GoogleSigninUseCase extends UseCase<UserEntity> {
  final AuthRepository _authRepository;

  GoogleSigninUseCase(this._authRepository);

  @override
  Future<Result<UserEntity>> call({dynamic parameter}) =>
      Result.guardFuture(_authRepository.signInGoogle);
}
