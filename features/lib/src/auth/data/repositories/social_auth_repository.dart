import 'package:dartz/dartz.dart';
import 'package:features/src/auth/domain/entities/user_entity.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:common/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'extension.dart';

class SocialAuthRepository extends AuthRepository {
  final FacebookAuth facebookAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;
  SocialAuthRepository(this.facebookAuth, this.googleSignIn, this.firebaseAuth);

  @override
  Future<Either<UserEntity, Failure>> signinFacebook() async {
    try {
      final _accessToken = await facebookAuth.login();
      final credential = FacebookAuthProvider.credential(_accessToken.token);
      final userCredential =
          await firebaseAuth.signInWithCredential(credential);
      return Left(userCredential.toUserEntity());
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
          await firebaseAuth.signInWithCredential(credential);
      return Left(userCredential.toUserEntity());
    } on Exception catch (e) {
      return Right(Failure.serverFailure(e));
    }
  }
}
