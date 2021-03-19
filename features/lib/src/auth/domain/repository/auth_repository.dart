import 'package:features/src/auth/domain/entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> signInFacebook();
  Future<UserEntity> signInGoogle();
  Future<void> signOutGoogle(String uid);
  Future<void> signOutFacebook(String uid);
  Future<UserEntity> loginUser();
}
