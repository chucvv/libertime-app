import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_entity.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';

class FacebookSigninUseCase extends UseCase<UserEntity, NoParams> {
  final AuthRepository authRepository;

  FacebookSigninUseCase(this.authRepository);
  @override
  Future<Either<UserEntity, Failure>> call(NoParams params) =>
      authRepository.signinFacebook();
}
