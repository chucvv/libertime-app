import 'package:features/src/auth/provider.dart';
import 'package:features/src/profile/domain/usecase/user_sign_out_usecase.dart';
import 'package:features/src/top_module_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/cubit/profile_cubit.dart';

final userSignOutProvider = Provider<UserSignOutUseCase>((ref) {
  return UserSignOutUseCase(ref.read(authRepositoryProvider));
});
final profileBlocProvider = Provider.autoDispose<ProfileCubit>((ref) {
  return ProfileCubit(
      ref.read(userSignOutProvider), ref.read(userNotifierProvider));
});
