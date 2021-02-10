import 'package:features/modules.dart';
import 'package:flutter/material.dart';
import 'package:libertime/src/container.dart';

class AppRouter {
  static const String index = '/splash';
  static const String main = '/main';
  static const String chat = '/chat';
  static const String personInfo = '/person_info';
  static const String notification = '/notification';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case notification:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case personInfo:
        return MaterialPageRoute(builder: (_) => PersonInfoScreen());
      case main:
        return MaterialPageRoute(builder: (_) => MainContainer());
      case chat:
        return MaterialPageRoute(builder: (_) => Chatting());
      case index:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
