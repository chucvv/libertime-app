import 'package:bloc/bloc.dart';
import 'package:features/src/profile/domain/usecase/user_sign_out_usecase.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final logger = Logger('SettingBloc');
  ProfileCubit(this._userSignOutUseCase, this._userNotifier)
      : super(ProfileState.initial()) {
    logger.info('Construct SettingBloc');
  }

  final UserSignOutUseCase _userSignOutUseCase;
  final UserNotifier _userNotifier;

  void signOut() async {
    final result = await _userSignOutUseCase(_userNotifier.user);
    result.when(success: (_) {
      _userNotifier.user = null;
      emit(ProfileState.onSignOutSuccess());
    }, failure: (error) {
      logger.severe(error.toString());
      emit(ProfileState.onSignOutFailure(error.message));
    });
  }
}
