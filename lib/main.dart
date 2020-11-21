import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libertime/src/app.dart';
import 'package:libertime/src/configuration/injection_container.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) async {
    di.setupLoginComponent();
    runApp(LiberTimeApp());
    //Fimber.plantTree(DebugTree.elapsed());
  });
}
