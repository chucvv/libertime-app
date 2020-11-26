import 'package:core_packages/core.dart';
import 'package:dartz/dartz.dart';
import 'package:signin/src/domain/entities/credential.dart';

abstract class AuthRepository {
  Future<Either<Failure, Credential>> authenticate(
      String username, String password);
}
