import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(_Initial());

  @override
  Stream<SigninState> mapEventToState(
    SigninEvent event,
  ) async* {
    // ignore: todo
    // TODO: implement mapEventToState
  }
}
