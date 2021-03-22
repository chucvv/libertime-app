import 'package:features/src/auth/domain/entity/auth_provider_enum.dart';

class UserEntity {
  final String socialUid;
  final String uid;
  final String displayName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String picture;
  final String email;
  final AuthProviderEnum provider;
  final DateTime creationTime;
  final DateTime lastSignInTime;
  final String locale;

  UserEntity(
      {this.socialUid,
      this.uid,
      this.displayName,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.picture,
      this.email,
      this.provider,
      this.creationTime,
      this.lastSignInTime,
      this.locale});
}
