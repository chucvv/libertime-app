import 'package:flutter/material.dart';
import 'package:libertime/constants/strings.dart';
import 'package:libertime/src/configuration/routes.dart';
import 'package:common_ui/awesome_ui.dart';

class LiberTimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      routes: Routes.routes,
      initialRoute: Routes.initial,
    );
  }
}
