import 'package:features/src/auth/data/services/social_auth_service.dart';
import 'package:features/src/auth/domain/entities/user_entity.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'extension.dart';

class DefaultAuthRepository extends AuthRepository {
  final SocialAuthService _authService;

  DefaultAuthRepository(this._authService);

  @override
  Future<UserEntity> signInFacebook() async {
    final userCredential = await _authService.signInFacebook();
    return userCredential.toUserEntity();
  }

  @override
  Future<UserEntity> signInGoogle() async {
    final userCredential = await _authService.signInGoogle();
    return userCredential.toUserEntity();
  }

  @override
  Future<void> signOut() {
    return _authService.signOutFacebook();
  }
}
