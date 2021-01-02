import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'routes.dart';
import 'strings.dart';

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
