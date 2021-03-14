import 'package:features/src/publisher/user_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final userNotifierProvider = ChangeNotifierProvider<UserNotifier>((ref) {
  return UserNotifier();
});

final facebookAuthProvider = Provider<FacebookAuth>((ref) {
  return FacebookAuth.instance;
});
final googleAuthProvider = Provider<GoogleSignIn>((ref) {
  return GoogleSignIn();
});
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
