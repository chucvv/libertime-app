import 'package:core_packages/core.dart';
import 'package:dartz/dartz.dart';
import 'package:signin/src/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, Credentials>> authenticate(
      String username, String password);
}
