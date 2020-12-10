import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'auth_request.g.dart';

abstract class AuthRequest implements Built<AuthRequest, AuthRequestBuilder> {
  String get username;
  String get password;

  AuthRequest._();

  factory AuthRequest([updates(AuthRequestBuilder builder)]) = _$AuthRequest;

  static Serializer<AuthRequest> get serializer => _$authRequestSerializer;
}
