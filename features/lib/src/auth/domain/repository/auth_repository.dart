import 'package:features/src/auth/domain/entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> signInFacebook();
  Future<UserEntity> signInGoogle();
  Future<void> signOutGoogle();
  Future<void> signOutFacebook();
  Future<UserEntity> loginUser();
}
