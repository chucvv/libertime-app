import 'package:features/src/auth/data/models/auth_response.dart';
import 'package:features/src/auth/domain/entities/credential.dart';

extension CredentialConverter on CredentialResponse {
  Credential toCredential() => Credential(accessToken, refreshToken);
}
