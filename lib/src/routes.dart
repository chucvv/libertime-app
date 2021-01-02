import 'package:flutter/material.dart';
import 'package:libertime/src/loading_page.dart';
import 'package:libertime/src/main_page.dart';
import 'package:signin/signin_module.dart';

class Routes {
  Routes._();

  static const String initial = "/";
  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    initial: (BuildContext context) => LoadingPage(),
    login: (BuildContext context) => SigninSplashScreen(
          successCallback: (credential) {
            Navigator.pushNamed(
              context,
              Routes.home,
            );
          },
        ),
    home: (BuildContext context) => MainPage(),
  };
}
