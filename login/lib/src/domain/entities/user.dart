import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class User extends Equatable {
  final String username;
  final String password;

  const User(this.username, this.password);

  @override
  List<Object> get props => [username, password];
}
