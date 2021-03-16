import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:features/src/publisher/user_notifier.dart';
import 'package:features/src/setting/domain/usecase/user_sign_out.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final logger = Logger('SettingBloc');
  SettingBloc(this._userSignOutUseCase, this._userNotifier) : super(Initial()) {
    logger.info('Construct SettingBloc');
  }

  final UserSignOutUseCase _userSignOutUseCase;
  final UserNotifier _userNotifier;

  @override
  Stream<SettingState> mapEventToState(
    SettingEvent event,
  ) async* {
    yield* event.when(onSignOut: _signOut);
  }

  Stream<SettingState> _signOut() async* {
    final result = await _userSignOutUseCase();
    yield result.when(success: (_) {
      _userNotifier.user = null;
      return SignOutSuccess();
    }, failure: (error) {
      logger.severe(error.toString());
      return SignOutFailure(error.message);
    });
  }
}
