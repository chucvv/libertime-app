import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_info.dart';

abstract class AuthRepository {
  Future<Either<UserEntity, Failure>> signinFacebook();
  Future<Either<UserEntity, Failure>> signinGoogle();
}
