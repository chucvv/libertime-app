import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage("assets/launcher/ic_launcher.png")),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, '/main');
    });
  }
}
