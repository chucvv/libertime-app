import 'package:chopper/chopper.dart';

extension RequestEncoder on Request {
  Request encode(String contentType, String Function(dynamic body) encode) {
    final _contentType = headers[contentTypeKey];
    if (_contentType == null || !_contentType.contains(contentType)) {
      return this;
    }
    return copyWith(
      body: encode(this.body),
    );
  }
}
