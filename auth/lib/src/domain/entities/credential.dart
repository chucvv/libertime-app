import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Credential extends Equatable {
  final String accessToken;
  final String refreshToken;

  const Credential(this.accessToken, this.refreshToken);

  @override
  List<Object> get props => [accessToken, refreshToken];
}
