import 'package:flutter/material.dart';
import 'package:libertime/src/main_page.dart';
import 'package:auth/auth_module.dart';

class AppRouter {
  static const String main = '/main';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => MainPage());
      default:
        return MaterialPageRoute(builder: (_) => AuthPage());
    }
  }
}
