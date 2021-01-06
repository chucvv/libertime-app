import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

import 'app_router.dart';
import 'strings.dart';

class LiberMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: theme,
      onGenerateRoute: AppRouter.generateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
