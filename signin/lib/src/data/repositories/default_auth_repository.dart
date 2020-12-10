import 'package:signin/src/data/datasources/auth_api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:core_packages/src/error/failures.dart';
import 'package:signin/src/data/models/auth_request.dart';
import 'package:signin/src/domain/entities/credential.dart';
import 'package:signin/src/domain/repositories/auth_repository.dart';
import 'package:signin/src/data/extension/auth_response.dart';

class DefaultAuthRepository extends AuthRepository {
  final AuthService _authService;

  DefaultAuthRepository(this._authService);
  @override
  Future<Either<Failure, Credential>> authenticate(
      String username, String password) async {
    try {
      final authResonse =
          await _authService.authenticate(AuthRequest((builder) => builder
            ..username = username
            ..password = password));
      return Right(authResonse.body.credential.toCredential());
    } catch (e) {
      return Left(Failure.serverFailure(e));
    }
  }
}
