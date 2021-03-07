import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/credential.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:common/common.dart';

class DefaultAuthRepository extends AuthRepository {
  DefaultAuthRepository();
  @override
  // ignore: missing_return
  Future<Either<Failure, Credential>> authenticate(
      String username, String password) async {
    /*try {
      final authResonse =
          await _authService.authenticate(AuthRequest((builder) => builder
            ..username = username
            ..password = password));
      return Right(authResonse.body.credential.toCredential());
    } on Exception catch (ex) {
      return Left(Failure.serverFailure(ex));
    }*/
  }
}
