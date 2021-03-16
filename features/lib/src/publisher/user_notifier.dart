import 'package:features/src/auth/domain/entity/user_entity.dart';
import 'package:flutter/material.dart';

class UserNotifier extends ChangeNotifier {
  UserEntity _userEntity;

  UserEntity get user => _userEntity;

  set user(UserEntity user) {
    _userEntity = user;
    notifyListeners();
  }
}
