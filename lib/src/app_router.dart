import 'package:features/modules.dart';
import 'package:flutter/material.dart';
import 'package:libertime/src/main_screen.dart';

class AppRouter {
  static const String index = '/splash';
  static const String main = '/main';
  static const String chat = '/chat';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case chat:
        return MaterialPageRoute(builder: (_) => Chatting());
      case index:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
