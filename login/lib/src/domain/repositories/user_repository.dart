import 'package:core_packages/core.dart';
import 'package:dartz/dartz.dart';
import 'package:login/src/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUser(String userName, String password);

  Future<Either<Failure, bool>> addUser(String userName, String password);
}
