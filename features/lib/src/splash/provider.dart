import 'package:features/src/auth/provider.dart';
import 'package:features/src/splash/domain/usecase/login_usecase.dart';
import 'package:features/src/top_module_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/cubit/splash_cubit.dart';

final checkSignInUseCaseProvider = Provider<LoginUseCase>((ref) {
  return LoginUseCase(ref.read(authRepositoryProvider));
});
final splashBlocProvider = Provider.autoDispose((ref) => SplashCubit(
    ref.read(checkSignInUseCaseProvider), ref.read(userNotifierProvider)));
