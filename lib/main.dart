import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:libertime/src/app.dart';
import 'package:logging/logging.dart';
import 'package:features/modules.dart' as sign;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  _setupLogging();
  Fimber.plantTree(FimberTree(useColors: true));
  Fimber.plantTree(DebugBufferTree.elapsed());
  //Bloc.observer = BlocLoggingObserver();
  await sign.setup();
  runApp(LiberMeApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    Fimber.d('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
