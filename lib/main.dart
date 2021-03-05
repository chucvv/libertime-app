import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libertime/src/app.dart';
import 'package:logging/logging.dart';
import 'package:share_ui/awesome_ui.dart';

import 'src/bloc_logging_observer.dart';
import 'src/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor:
        AppColors.primaryColor[900], // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
    statusBarBrightness: Brightness.light, //status bar brigtness
    statusBarIconBrightness: Brightness.light, //status barIcon Brightness
    systemNavigationBarDividerColor:
        AppColors.primaryColor[900], //Navigation bar divider color
    systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon
  ));
  _setupLogging();
  Bloc.observer = BlocLoggingObserver();
  runApp(LiberMeApp());
}

void _setupLogging() {
  // only enable logging for debug mode
  if (Config.isRelease) {
    Logger.root.level = Level.OFF;
  } else {
    Logger.root.level = Level.ALL;
  }
  hierarchicalLoggingEnabled = true;
  Logger.root.onRecord.listen((record) {
    if (Config.isRelease) {
      return;
    }

    var start = '\x1b[90m';
    const end = '\x1b[0m';
    const white = '\x1b[37m';

    switch (record.level.name) {
      case 'INFO':
        start = '\x1b[37m';
        break;
      case 'WARNING':
        start = '\x1b[93m';
        break;
      case 'SEVERE':
        start = '\x1b[103m\x1b[31m';
        break;
      case 'SHOUT':
        start = '\x1b[41m\x1b[93m';
        break;
    }

    final message = '$white${record.time}'
        ':$end$start${record.level.name}: ${record.message}$end';
    developer.log(
      message,
      name: record.loggerName.padRight(25),
      level: record.level.value,
      time: record.time,
    );
  });
}
