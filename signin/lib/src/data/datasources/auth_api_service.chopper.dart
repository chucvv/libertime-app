// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<dynamic>> authenticate(Map<String, dynamic> body) {
    final $url = '/authenticate';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
