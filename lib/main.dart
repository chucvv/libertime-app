import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:libertime/src/app.dart';
import 'package:logging/logging.dart';
import 'package:features/modules.dart' as sign;
import 'package:share_ui/awesome_ui.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: clPrimary, // navigation bar color
    statusBarColor: clBackgroud, // status bar color
    statusBarBrightness: Brightness.dark, //status bar brigtness
    statusBarIconBrightness: Brightness.dark, //status barIcon Brightness
    systemNavigationBarDividerColor:
        Colors.greenAccent, //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));
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
