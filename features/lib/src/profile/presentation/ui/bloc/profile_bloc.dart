import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:features/src/profile/domain/usecase/user_sign_out_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final logger = Logger('SettingBloc');
  ProfileBloc(this._userSignOutUseCase, this._userNotifier) : super(Initial()) {
    logger.info('Construct SettingBloc');
  }

  final UserSignOutUseCase _userSignOutUseCase;
  final UserNotifier _userNotifier;

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.when(onSignOut: _signOut);
  }

  Stream<ProfileState> _signOut() async* {
    final result = await _userSignOutUseCase(_userNotifier.user);
    yield result.when(success: (_) {
      _userNotifier.user = null;
      return SignOutSuccess();
    }, failure: (error) {
      logger.severe(error.toString());
      return SignOutFailure(error.message);
    });
  }
}
