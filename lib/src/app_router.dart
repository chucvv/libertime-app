import 'package:features/modules.dart';
import 'package:flutter/material.dart';
import 'package:libertime/src/main_page.dart';

class AppRouter {
  static const String main = '/main';
  static const String chat = '/chat';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case main:
        return MaterialPageRoute(builder: (_) => MainPage());
      case chat:
        return MaterialPageRoute(builder: (_) => Chatting());
      default:
        return MaterialPageRoute(builder: (_) => MainPage());
    }
  }
}
