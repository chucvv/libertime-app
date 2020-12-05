import 'package:json_annotation/json_annotation.dart';

part 'auth_request.g.dart';

@JsonSerializable()
class AuthRequest {
  @JsonKey(name: "username")
  final String username;

  @JsonKey(name: "password")
  final String password;

  AuthRequest(this.username, this.password);

  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
