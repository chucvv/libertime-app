import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

String prettyPrint(Map json) {
  var encoder = JsonEncoder.withIndent('  ');
  var pretty = encoder.convert(json);
  return pretty;
}

class SocialLogin extends StatefulWidget {
  @override
  _SocialLogin createState() => _SocialLogin();
}

class _SocialLogin extends State<SocialLogin> {
  bool _checking = true;

  @override
  void initState() {
    super.initState();
    _checkIfIsLogged(); // check if the user has an active session
  }

  /// uses the facebook SDK to check if a user has an active session
  Future<void> _checkIfIsLogged() async {
    final accessToken = await FacebookAuth.instance.isLogged;
    setState(() {
      _checking = false;
    });
    if (accessToken != null) {
      // if the user is logged
      print("is Logged:::: ${prettyPrint(accessToken.toJson())}");
      // now you can call to  FacebookAuth.instance.getUserData();
      //final userData = await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(
      //fields: "email,birthday,friends,gender,link");

    }
  }

  Future<void> _login() async {
    try {
      // show a circular progress indicator
      setState(() {
        _checking = true;
      });
      //final _accessToken =
      await FacebookAuth.instance
          .login(); // by the fault we request the email and the public profile

      // loginBehavior is only supported
      //for Android devices, for ios it will be ignored
      // _accessToken = await FacebookAuth.instance.login(
      //   permissions: ['email', 'public_profile', 'user_birthday',
      //'user_friends', 'user_gender', 'user_link'],
      //   loginBehavior:
      //       LoginBehavior.DIALOG_ONLY, // (only android) show
      //an authentication dialog instead of redirecting to facebook app
      // );

      // get the user data
      // by default we get the userId, email,name and picture
      //final userData =
      await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(
      //fields: "email,birthday,friends,gender,link");
      Navigator.popAndPushNamed(context, '/home');
    } on FacebookAuthException catch (e) {
      // if the facebook login fails
      print(e.message); // print the error message in console
      // check the error type
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          print("login cancelled");
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    } on Exception {} finally {
      // update the view
      setState(() {
        _checking = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Facebook Auth Example'),
        ),
        body: _checking
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CupertinoButton(
                        color: Colors.blue,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: _login,
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
