import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:features/src/auth/data/models/auth_request.dart';
import 'package:features/src/auth/data/models/auth_response.dart';

part 'serializers.g.dart';

@SerializersFor([AuthRequest, CredentialResponse, AuthResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
