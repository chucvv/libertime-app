import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "message")
  final String message;

  @JsonKey(name: "credential")
  final CredentialResponse credential;

  AuthResponse(this.status, this.message, this.credential);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@JsonSerializable()
@JsonKey(name: "accessToken")
class CredentialResponse {
  final String accessToken;

  @JsonKey(name: "refreshToken")
  final String refreshToken;

  CredentialResponse(this.accessToken, this.refreshToken);

  Map<String, dynamic> toJson() => _$CredentialResponseToJson(this);

  factory CredentialResponse.fromJson(Map<String, dynamic> json) =>
      _$CredentialResponseFromJson(json);
}
