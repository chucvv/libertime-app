import 'package:features/src/auth/provider.dart';
import 'package:features/src/setting/domain/usecase/user_sign_out_usecase.dart';
import 'package:features/src/setting/presentation/ui/bloc/setting_bloc.dart';
import 'package:features/src/top_module_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userSignOutProvider = Provider<UserSignOutUseCase>((ref) {
  return UserSignOutUseCase(ref.read(authRepositoryProvider));
});
final settingBlocProvider = Provider.autoDispose<SettingBloc>((ref) {
  return SettingBloc(
      ref.read(userSignOutProvider), ref.read(userNotifierProvider));
});
