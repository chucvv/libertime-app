import 'package:features/src/auth/data/service/social_auth_service.dart';
import 'package:features/src/setting/domain/repository/setting_repository.dart';

class DefaultSettingRepository extends SettingRepository {
  final SocialAuthService _authService;

  DefaultSettingRepository(this._authService);

  @override
  Future<void> signOut() {
    return _authService.signOutFacebook();
  }
}
