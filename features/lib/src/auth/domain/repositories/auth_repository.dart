import 'package:features/src/auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> signInFacebook();
  Future<UserEntity> signInGoogle();
  Future<void> signOut();
}
