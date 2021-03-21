import 'package:database/database.dart';
import 'package:features/src/auth/data/service/social_auth_service.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';
import 'extension.dart';

class DefaultAuthRepository extends AuthRepository {
  final SocialAuthService _authService;
  final UserDatabase _userDatabase;

  DefaultAuthRepository(this._authService, this._userDatabase);

  @override
  Future<UserEntity> signInFacebook() async {
    final userCredential = await _authService.signInFacebook();
    final userEntity = userCredential.decodeFacebookUser();
    await _userDatabase.put(userEntity.encode());
    return userEntity;
  }

  @override
  Future<UserEntity> signInGoogle() async {
    final userCredential = await _authService.signInGoogle();
    final userEntity = userCredential.decodeGoogleUser();
    await _userDatabase.put(userEntity.encode());
    return userEntity;
  }

  @override
  Future<UserEntity> signInFirebaseAnonymous() async {
    final anonymousUser = await _authService.signInFirebaseAnonymous();
    final userEntity = anonymousUser.decodeAnonymous();
    await _userDatabase.put(userEntity.encode());
    return userEntity;
  }

  @override
  Future<UserEntity> loginUser() async {
    final isLogged = await _authService.isUserLogged();
    if (!isLogged) {
      return null;
    }
    final profile = await _userDatabase.getProfile();
    return profile?.decode() ?? null;
  }

  @override
  Future<void> signOutFacebook(String uid) async {
    await _authService.signOutFacebook();
    await _userDatabase.remove(uid);
  }

  @override
  Future<void> signOutGoogle(String uid) async {
    await _authService.signOutGoogle();
    await _userDatabase.remove(uid);
  }
}
