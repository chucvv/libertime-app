import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<UserEntity, Failure>> signinFacebook();
  Future<Either<UserEntity, Failure>> signinGoogle();
}
