import 'dart:typed_data';

import 'package:chopper/chopper.dart';

extension ResponseDecoder on Response {
  Response<BodyType> decode<BodyType>(
      String contentType, BodyType Function(Uint8List bodyBytes) decode) {
    final _contentType = headers[contentTypeKey];
    if (_contentType == null || !_contentType.contains(contentType)) {
      return copyWith<BodyType>(body: body as BodyType);
    }
    try {
      final _body = decode(bodyBytes);
      return copyWith<BodyType>(body: _body);
    } catch (e) {
      chopperLogger.warning(e);
      return copyWith<BodyType>(body: body as BodyType);
    }
  }
}
