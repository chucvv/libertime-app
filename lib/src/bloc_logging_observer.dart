import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

class BlocLoggingObserver extends BlocObserver {
  static final _log = Logger('SiteInfoService');
  @override
  void onCreate(Cubit cubit) {
    super.onCreate(cubit);
    _log.info('onCreate -- cubit: ${cubit.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    _log.info('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }

  @override
  void onChange(Cubit cubit, Change change) {
    super.onChange(cubit, change);
    _log.info('onChange -- cubit: ${cubit.runtimeType}, change: $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    _log.info(
        'onTransition -- bloc: ${bloc.runtimeType}, transition: $transition');
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    _log.info('onError -- cubit: ${cubit.runtimeType}, error: $error');
    super.onError(cubit, error, stackTrace);
  }

  @override
  void onClose(Cubit cubit) {
    super.onClose(cubit);
    _log.info('onClose -- cubit: ${cubit.runtimeType}');
  }
}
