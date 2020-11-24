import 'package:flutter/material.dart';
import 'package:libertime/src/features/home/presentation/pages/home_page.dart';
import 'package:signin/signin.dart';

class Routes {
  Routes._();

  static const String initial = "/";
  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    initial: (BuildContext context) => SigninSplashScreen(),
    home: (BuildContext context) => HomePage(),
  };
}
