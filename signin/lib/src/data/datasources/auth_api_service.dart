import 'package:chopper/chopper.dart';

part 'auth_api_service.chopper.dart';

@ChopperApi(baseUrl: "/authenticate")
abstract class AuthService extends ChopperService {
  @Post()
  Future<Response> authenticate(
    @Body() Map<String, dynamic> body,
  );

  static AuthService create() {
    final client = ChopperClient(
        baseUrl: "http://52.77.153.8",
        services: [_$AuthService()],
        converter: JsonConverter());

    return _$AuthService(client);
  }
}
