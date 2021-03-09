import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_info.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';

class GoogleSigninUseCase extends UseCase<UserEntity, NoParams> {
  final AuthRepository authRepository;

  GoogleSigninUseCase(this.authRepository);
  @override
  Future<Either<UserEntity, Failure>> call(NoParams params) =>
      authRepository.signinGoogle();
}