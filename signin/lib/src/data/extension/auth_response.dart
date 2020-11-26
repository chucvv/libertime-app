import 'package:signin/src/data/models/auth_response.dart';
import 'package:signin/src/domain/entities/credential.dart';

extension CredentialConverter on CredentialResponse {
  Credential toCredential() => Credential(accessToken, refreshToken);
}
