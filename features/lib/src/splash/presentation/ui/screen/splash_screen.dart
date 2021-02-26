import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:rive/rive.dart';
import 'package:share_ui/awesome_ui.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Artboard _riveArtboard;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: clBackgroud,
        body: Center(
          child: Rive(artboard: _riveArtboard),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), _checkIfIsLogged);
    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/heart.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(SimpleAnimation('heart'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }

  /// uses the facebook SDK to check if a user has an active session
  Future<void> _checkIfIsLogged() async {
    final accessToken = await FacebookAuth.instance.isLogged;
    if (accessToken == null) {
      Navigator.popAndPushNamed(context, '/login');
      return;
    }
    // now you can call to  FacebookAuth.instance.getUserData();
    //final userData =
    await FacebookAuth.instance.getUserData();
    Navigator.popAndPushNamed(context, '/home');
  }
}
