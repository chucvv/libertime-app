import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:libertime/src/configuration/bloc_logging_observer.dart';
import 'package:libertime/src/configuration/injection_container.dart' as app_di;
import 'package:signin/signin.dart' as sign;
import 'package:splash/splash_screen.dart';

class AppStartup {
  Future setupInBackground(MessageState state) async {
    Fimber.plantTree(FimberTree(useColors: true));
    Fimber.plantTree(DebugBufferTree.elapsed());
    Bloc.observer = BlocLoggingObserver();
    await app_di.setup();
    await sign.setup();
  }
}
