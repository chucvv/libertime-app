import 'dart:async';
import 'package:chopper/chopper.dart';

class AuthHeaderInterceptor extends RequestInterceptor {
  static const String authHeader = 'Authorization';
  static const String bearer = 'Bearer ';
  static const String authToken = '< your key here >';
  @override
  FutureOr<Request> onRequest(Request request) =>
      request.copyWith(headers: {authHeader: bearer + authToken});
}
