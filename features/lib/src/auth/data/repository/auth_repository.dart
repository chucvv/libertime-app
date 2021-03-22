import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:database/database.dart';
import 'package:features/src/auth/data/service/social_auth_service.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';
import 'extension.dart';

class DefaultAuthRepository extends AuthRepository {
  final SocialAuthService _authService;
  final UserDatabase _userDatabase;
  final FirebaseFirestore _firebaseFirestore;
  final String collectionName = 'users';

  DefaultAuthRepository(
      this._authService, this._firebaseFirestore, this._userDatabase);

  @override
  Future<UserEntity> signInFacebook() async {
    final userCredential = await _authService.signInFacebook();
    final userEntity = userCredential.decodeFacebookUser();
    _saveUser(userEntity);
    return userEntity;
  }

  @override
  Future<UserEntity> signInGoogle() async {
    final userCredential = await _authService.signInGoogle();
    final userEntity = userCredential.decodeGoogleUser();
    _saveUser(userEntity);
    return userEntity;
  }

  @override
  Future<UserEntity> signInFirebaseAnonymous() async {
    final anonymousUser = await _authService.signInFirebaseAnonymous();
    final userEntity = anonymousUser.decodeAnonymous();
    _saveUser(userEntity);
    return userEntity;
  }

  Future<void> _saveUser(UserEntity userEntity) async {
    final userModel = userEntity.encode();
    return Future.wait([
      _userDatabase.putUserInfo(userModel),
      _firebaseFirestore
          .collection(collectionName)
          .doc(userModel.uid)
          .set(userModel.toJson())
    ]);
  }

  @override
  Future<UserEntity> loginUser() async {
    final isLogged = await _authService.isUserLogged();
    if (!isLogged) {
      return null;
    }
    final profile = await _userDatabase.getUserInfo();
    return profile?.decode() ?? null;
  }

  @override
  Future<void> signOutFacebook(String uid) async {
    return Future.wait(
        [_authService.signOutFacebook(), _userDatabase.removeUserInfo(uid)]);
  }

  @override
  Future<void> signOutGoogle(String uid) async {
    return Future.wait(
        [_authService.signOutGoogle(), _userDatabase.removeUserInfo(uid)]);
  }
}
