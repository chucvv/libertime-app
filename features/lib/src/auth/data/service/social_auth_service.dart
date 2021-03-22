import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class SocialAuthService {
  Future<UserCredential> signInFacebook();
  Future<UserCredential> signInGoogle();
  Future<UserCredential> signInFirebaseAnonymous();
  Future<void> signOutGoogle();
  Future<void> signOutFacebook();
  Future<bool> isUserLogged();
}

class FirebaseAuthService extends SocialAuthService {
  final FacebookAuth _facebookAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthService(
      this._facebookAuth, this._googleSignIn, this._firebaseAuth);

  @override
  Future<UserCredential> signInFacebook() async {
    final _accessToken = await _facebookAuth.login();
    if (_accessToken == null) {
      throw StateError('Empty access token from Facebook');
    }
    final credential = FacebookAuthProvider.credential(_accessToken.token);
    return await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signInGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      throw StateError('Invalid user from Google');
    }
    final googleAuth = await googleUser.authentication;
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await _firebaseAuth.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signInFirebaseAnonymous() async =>
      await _firebaseAuth.signInAnonymously();

  @override
  Future<void> signOutFacebook() async {
    return Future.wait([
      _firebaseAuth.signOut(),
      _facebookAuth.logOut(),
    ]);
  }

  @override
  Future<void> signOutGoogle() async {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  Future<bool> isUserLogged() async {
    final user = await _firebaseAuth.currentUser;
    return user != null;
  }
}
