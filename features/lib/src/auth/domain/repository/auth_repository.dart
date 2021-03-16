import 'package:features/src/auth/domain/entity/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> signInFacebook();
  Future<UserEntity> signInGoogle();
}
