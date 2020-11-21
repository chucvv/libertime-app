import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/splash_screen.dart';

import 'app_startup.dart';
import 'configuration/routes.dart';

class LoadingPage extends StatefulWidget {
  @override
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SplashScreenWidget(
          initializers: <dynamic>[AppStartup().setupInBackground],
          navigateToWidget: Routes.login),
    );
  }
}
