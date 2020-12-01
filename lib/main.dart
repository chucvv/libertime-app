import 'package:fimber/fimber_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libertime/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) async {
    runApp(LiberTimeApp());
    Fimber.plantTree(DebugTree.elapsed());
  });
}
