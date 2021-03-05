import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with AutomaticKeepAliveClientMixin<LoginScreen> {
  final _logger = Logger('LoginScreen');
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode nodeOne = FocusNode();
  final FocusNode nodeTwo = FocusNode();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final fbLoginBtn = CircleButton(
      icon: FontAwesomeIcons.facebookF,
      iconSize: ScreenUtil().setHeight(20),
      width: ScreenUtil().setHeight(40),
      height: ScreenUtil().setHeight(40),
      backgroundColor: Colors.blue,
      iconColor: Colors.white,
      onTap: _loginFacebook,
    );

    final googleLoginBtn = CircleButton(
      icon: FontAwesomeIcons.google,
      iconSize: ScreenUtil().setHeight(20),
      width: ScreenUtil().setHeight(40),
      height: ScreenUtil().setHeight(40),
      backgroundColor: Colors.redAccent,
      iconColor: Colors.white,
      onTap: _signInWithGoogle,
    );

    final loginBtn = RoundedButton(
      text: 'Login',
      icon: FontAwesomeIcons.signInAlt,
      backgroundColor: kPrimaryColor,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 3.0,
      onTap: () {
        FocusScope.of(context).requestFocus(nodeOne);
      },
    );

    final loginForm = ListView(
      padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      shrinkWrap: true,
      children: [
        SizedBox(height: 10.0),
        Column(
          children: [
            Text(
              'Hi,',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Login to connect your friends',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        SizedBox(height: 10.0),
        TextField(
          controller: _usernameController,
          autofocus: true,
          focusNode: nodeOne,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          maxLength: 25,
          decoration: InputDecoration(
              fillColor: Colors.white,
              hintText: "Phone",
              helperText: "",
              border: OutlineInputBorder()),
        ),
        SizedBox(height: 10.0),
        ToglePasswordTextField(
          controller: _passwordController,
          focusNode: nodeTwo,
          textInputAction: TextInputAction.send,
          maxLength: 16,
          helperText: "Minimum is 6 character",
        ),
        SizedBox(height: 30.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [loginBtn],
        ),
        SizedBox(height: 36.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Or Sign Up Using')],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [fbLoginBtn, SizedBox(width: 20.0), googleLoginBtn],
        ),
      ],
    );

    return loginForm;
  }

  Future<void> _loginFacebook() async {
    try {
      final _accessToken = await FacebookAuth.instance
          .login(); // by the fault we request the email and the public profile
      final credential = FacebookAuthProvider.credential(_accessToken.token);
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      _logger.fine(userCredential.toString());
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
    }
  }

  Future<void> _signInWithGoogle() async {
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    _logger.fine(userCredential.toString());
    Navigator.popAndPushNamed(context, '/home');
  }
}
