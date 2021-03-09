import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_info.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class DefaultAuthRepository extends AuthRepository {
  DefaultAuthRepository();

  @override
  Future<Either<UserEntity, Failure>> signinFacebook() async {
    try {
      final _accessToken = await FacebookAuth.instance.login();
      final credential = FacebookAuthProvider.credential(_accessToken.token);
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return Left(UserEntity(userCredential));
    } on Exception catch (e) {
      return Right(Failure.serverFailure(e));
    }
  }

  @override
  Future<Either<UserEntity, Failure>> signinGoogle() {
    // ignore: todo
    // TODO: implement signinGoogle
    throw UnimplementedError();
  }
}
