import 'package:features/src/auth/data/repository/auth_repository.dart';
import 'package:features/src/auth/domain/repository/auth_repository.dart';
import 'package:features/src/auth/domain/usecase/anonymous_signin.dart';
import 'package:features/src/auth/domain/usecase/facebook_signin.dart';
import 'package:features/src/auth/domain/usecase/google_signin.dart';
import 'package:features/src/top_module_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'data/service/social_auth_service.dart';
import 'presentation/blocs/signin/signin_bloc.dart';

final authServiceProvider = Provider<SocialAuthService>((ref) {
  return FirebaseAuthService(ref.read(facebookAuthProvider),
      ref.read(googleAuthProvider), ref.read(firebaseAuthProvider));
});
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return DefaultAuthRepository(ref.read(authServiceProvider),
      ref.read(fireStoreProvider), ref.read(userDatabaseProvider));
});
final facebookUseCaseProvider = Provider<FacebookSigninUseCase>((ref) {
  return FacebookSigninUseCase(ref.read(authRepositoryProvider));
});
final googleUseCaseProvider = Provider<GoogleSigninUseCase>((ref) {
  return GoogleSigninUseCase(ref.read(authRepositoryProvider));
});
final anonymousUseCaseProvider = Provider<AnonymousSigninUseCase>((ref) {
  return AnonymousSigninUseCase(ref.read(authRepositoryProvider));
});
final signInBlocProvider = Provider.autoDispose((ref) => SigninBloc(
      ref.read(facebookUseCaseProvider),
      ref.read(googleUseCaseProvider),
      ref.read(anonymousUseCaseProvider),
      ref.read(userNotifierProvider),
    ));
