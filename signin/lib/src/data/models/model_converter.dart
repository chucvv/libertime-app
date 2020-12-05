import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:core_packages/core.dart';

typedef Decoder<BodyType> = BodyType Function(Map<String, dynamic>);

class ModelConverter<BodyType> extends Converter {
  final Decoder decoder;

  ModelConverter(this.decoder);

  @override
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );
    return req.encode(jsonHeaders, (body) => json.encode(body));
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return response.decode<BodyType>(jsonHeaders, (bodyBytes) {
      final _body = utf8.decode(bodyBytes);
      final decodedBody = json.decode(_body);
      return decoder(decodedBody);
    });
  }
}
