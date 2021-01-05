import 'package:share_module/common.dart';
import 'package:dartz/dartz.dart';
import 'package:auth/src/domain/entities/credential.dart';

abstract class AuthRepository {
  Future<Either<Failure, Credential>> authenticate(
      String username, String password);
}
