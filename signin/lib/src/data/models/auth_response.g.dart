// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return AuthResponse(
    json['status'] as String,
    json['message'] as String,
    json['credential'] == null
        ? null
        : CredentialResponse.fromJson(
            json['credential'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'credential': instance.credential,
    };

CredentialResponse _$CredentialResponseFromJson(Map<String, dynamic> json) {
  return CredentialResponse(
    json['accessToken'] as String,
    json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$CredentialResponseToJson(CredentialResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
