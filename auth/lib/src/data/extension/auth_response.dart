import 'package:auth/src/data/models/auth_response.dart';
import 'package:auth/src/domain/entities/credential.dart';

extension CredentialConverter on CredentialResponse {
  Credential toCredential() => Credential(accessToken, refreshToken);
}
