import 'package:chopper/chopper.dart';
import 'package:signin/src/data/datasources/built_value_converter.dart';
import 'package:signin/src/data/models/auth_request.dart';
import 'package:signin/src/data/models/auth_response.dart';

part 'auth_api_service.chopper.dart';

@ChopperApi()
abstract class AuthService extends ChopperService {
  @Post(path: "/authenticate")
  Future<Response<AuthResponse>> authenticate(@Body() AuthRequest request);

  static AuthService create() {
    final client = ChopperClient(
        baseUrl: "http://localhost",
        services: [_$AuthService()],
        interceptors: [HttpLoggingInterceptor()],
        converter: BuiltValueConverter(),
        errorConverter: const JsonConverter());

    return _$AuthService(client);
  }
}
