import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:libertime/src/features/home/presentation/pages/home_page.dart';
import 'package:libertime/src/loading_page.dart';
import 'package:login/login.dart';

class Routes {
  Routes._();

  static const String initial = "/";
  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    initial: (BuildContext context) => HomePage(),
    login: (BuildContext context) => TeddyLoginPage(
          loginBloc: GetIt.I<LoginBloc>(),
          onLoginSuccess: (user) {
            Navigator.pushNamed(
              context,
              Routes.home,
            );
            //Navigator.of(context, rootNavigator: true).pop();
          },
        ),
    home: (BuildContext context) => HomePage(),
  };
}
