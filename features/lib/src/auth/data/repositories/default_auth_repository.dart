import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_info.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DefaultAuthRepository extends AuthRepository {
  final FacebookAuth facebookAuth;
  final GoogleSignIn googleSignIn;
  DefaultAuthRepository(this.facebookAuth, this.googleSignIn);

  @override
  Future<Either<UserEntity, Failure>> signinFacebook() async {
    try {
      final _accessToken = await facebookAuth.login();
      final credential = FacebookAuthProvider.credential(_accessToken.token);
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return Left(UserEntity(userCredential));
    } on Exception catch (e) {
      return Right(Failure.serverFailure(e));
    }
  }

  @override
  Future<Either<UserEntity, Failure>> signinGoogle() async {
    try {
      // Trigger the authentication flow
      final googleUser = await googleSignIn.signIn();
      // Obtain the auth details from the request
      final googleAuth = await googleUser.authentication;
      // Create a new credential
      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // Once signed in, return the UserCredential
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return Left(UserEntity(userCredential));
    } on Exception catch (e) {
      return Right(Failure.serverFailure(e));
    }
  }
}
