import 'package:features/src/auth/domain/entities/credential.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Credential>> authenticate(
      String username, String password);
}
