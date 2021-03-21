import 'package:database/database.dart';
import 'package:features/src/auth/domain/entity/auth_provider_enum.dart';
import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension UserCredentialDecoder on UserCredential {
  UserEntity decodeGoogleUser() => _decode(AuthProviderEnum.google);

  UserEntity decodeFacebookUser() => _decode(AuthProviderEnum.facebook);

  UserEntity decodeAnonymous() => _decode(AuthProviderEnum.anonymous);

  UserEntity _decode(AuthProviderEnum provider) {
    var userEntity;
    switch (provider) {
      case AuthProviderEnum.facebook:
      case AuthProviderEnum.google:
        final userInfo = user.providerData[0];
        userEntity = UserEntity(
            uid: userInfo.uid ?? user.uid,
            displayName: user.displayName ?? userInfo.displayName,
            firstName: additionalUserInfo.profile['first_name'] ??
                additionalUserInfo.profile['family_name'],
            lastName: additionalUserInfo.profile['last_name'] ??
                additionalUserInfo.profile['given_name'],
            phoneNumber: user.phoneNumber,
            picture: provider == AuthProviderEnum.facebook
                ? additionalUserInfo.profile['picture']['data']['url']
                : user.photoURL,
            email: user.email ?? userInfo.email,
            provider: provider,
            creationTime: user.metadata.creationTime,
            lastSignInTime: user.metadata.lastSignInTime,
            locale: additionalUserInfo.profile['locale']);
        break;
      case AuthProviderEnum.phone:
        userEntity = UserEntity();
        break;
      case AuthProviderEnum.anonymous:
        userEntity = UserEntity(uid: user.uid);
    }
    return userEntity;
  }
}

extension UserEntityDecoder on UserEntity {
  Profile encode() => Profile(
        uid: uid,
        displayName: displayName,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        picture: picture,
        email: email,
        provider: provider.toString(),
        creationTime: creationTime,
        lastSignInTime: lastSignInTime,
        locale: locale,
      );
}

extension ProfileDecoder on Profile {
  UserEntity decode() => UserEntity(
        uid: uid,
        displayName: displayName,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        picture: picture,
        email: email,
        provider: EnumUtil.fromStringEnum(AuthProviderEnum.values, provider),
        creationTime: creationTime,
        lastSignInTime: lastSignInTime,
        locale: locale,
      );
}
