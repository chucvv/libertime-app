import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libertime/src/configuration/bloc_logging_observer.dart';
import 'package:libertime/src/configuration/injection_container.dart' as di;
import 'package:splash/splash_screen.dart';
import 'package:signin/signin.dart' as login_di;

class AppStartup {
  Future setupInBackground(MessageState state) async {
    Fimber.plantTree(DebugTree());
    Bloc.observer = BlocLoggingObserver();
    await di.setup();
    await login_di.setup();
  }
}
