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
    _userDatabase.put(userEntity.encode());
    return userEntity;
  }

  @override
  Future<UserEntity> signInGoogle() async {
    final userCredential = await _authService.signInGoogle();
    final userEntity = userCredential.decodeGoogleUser();
    _userDatabase.put(userEntity.encode());
    return userEntity;
  }

  @override
  Future<UserEntity> loginUser() {
    return _authService.isUserLogged().then((isLogged) async {
      if (!isLogged) {
        return null;
      }
      final profile = await _userDatabase.getProfile();
      return profile?.decode() ?? null;
    });
  }

  @override
  Future<void> signOutFacebook() => _authService.signOutFacebook();

  @override
  Future<void> signOutGoogle() => _authService.signOutGoogle();
}
