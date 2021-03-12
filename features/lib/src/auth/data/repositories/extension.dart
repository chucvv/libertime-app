import 'package:features/src/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension ToUserProfile on UserCredential {
  UserEntity toUserEntity() {
    final userInfo = user.providerData[0];
    return UserEntity(
        userInfo.uid ?? user.uid,
        user.displayName ?? userInfo.displayName,
        additionalUserInfo.profile['first_name'] ??
            additionalUserInfo.profile['family_name'],
        additionalUserInfo.profile['last_name'] ??
            additionalUserInfo.profile['given_name'],
        user.phoneNumber,
        additionalUserInfo.profile['picture']['data']['url'] ?? user.photoURL,
        user.email ?? userInfo.email,
        additionalUserInfo.providerId,
        user.metadata.creationTime,
        user.metadata.lastSignInTime,
        additionalUserInfo.profile['locale']);
  }
}
