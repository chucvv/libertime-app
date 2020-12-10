import 'package:json_annotation/json_annotation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'auth_response.g.dart';

abstract class AuthResponse
    implements Built<AuthResponse, AuthResponseBuilder> {
  String get status;

  @nullable
  String get message;

  @nullable
  CredentialResponse get credential;

  AuthResponse._();

  factory AuthResponse([updates(AuthResponseBuilder builder)]) = _$AuthResponse;

  static Serializer<AuthResponse> get serializer => _$authResponseSerializer;
}

abstract class CredentialResponse
    implements Built<CredentialResponse, CredentialResponseBuilder> {
  String get accessToken;

  String get refreshToken;

  CredentialResponse._();

  factory CredentialResponse([updates(CredentialResponseBuilder builder)]) =
      _$CredentialResponse;

  static Serializer<CredentialResponse> get serializer =>
      _$credentialResponseSerializer;
}
