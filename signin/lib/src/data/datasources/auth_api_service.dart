import 'package:chopper/chopper.dart';
import 'package:core_packages/core.dart';
import 'package:signin/src/data/models/auth_response.dart';
import 'package:signin/src/data/models/model_converter.dart';

part 'auth_api_service.chopper.dart';

@ChopperApi()
abstract class AuthService extends ChopperService {
  @Post(path: "/authenticate")
  Future<Response<AuthResponse>> authenticate(
      @Body() Map<String, dynamic> body);

  static AuthService create() {
    final client = ChopperClient(
        baseUrl: "http://52.77.153.8",
        services: [_$AuthService()],
        interceptors: [AuthHeaderInterceptor(), HttpLoggingInterceptor()],
        converter: ModelConverter(),
        errorConverter: JsonConverter());

    return _$AuthService(client);
  }
}
