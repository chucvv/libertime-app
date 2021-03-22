import 'package:database/database.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final userDatabaseProvider = Provider<UserDatabase>((ref) {
  return UserDatabase(
      Executor(logStatements: true).provideExecutor(dbFileName: "user"));
});

final globalDatabaseProvider = Provider<GlobalDatabase>((ref) {
  return GlobalDatabase(
      Executor(logStatements: true).provideExecutor(dbFileName: "global"));
});

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
final fireStoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});
