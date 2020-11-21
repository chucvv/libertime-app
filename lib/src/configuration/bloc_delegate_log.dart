import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';

class BlocDelegateLog extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    Fimber.d("[Bloc] onEvent $event");
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    Fimber.d(
        "[Bloc] from ${transition.event}:${transition.currentState} to ${transition.nextState.toString()}");
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    Fimber.d("[Bloc] ${error.toString()} ${stacktrace.toString()}");
    super.onError(bloc, error, stacktrace);
  }
}
