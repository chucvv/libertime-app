import 'package:fimber/fimber.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:logging/logging.dart';
import 'package:auth/auth_module.dart' as sign;
import 'package:splash/splash_module.dart';

class AppStartup {
  Future setupInBackground(MessageState state) async {
    _setupLogging();
    Fimber.plantTree(FimberTree(useColors: true));
    Fimber.plantTree(DebugBufferTree.elapsed());
    //Bloc.observer = BlocLoggingObserver();
    await sign.setup();
  }
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    Fimber.d('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
