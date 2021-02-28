import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:share_ui/awesome_ui.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with AutomaticKeepAliveClientMixin<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode nodeOne = FocusNode();
  final FocusNode nodeTwo = FocusNode();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final fbLoginBtn = RoundedButton(
      text: 'connect with Facebook',
      icon: FontAwesomeIcons.facebookSquare,
      backgroundColor: kPrimaryColor,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 3.0,
      onTap: _loginFacebook,
    );

    final registerBtn = RoundedButton(
      text: 'Register',
      icon: FontAwesomeIcons.userPlus,
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
              'Create an account to connect your friends',
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
              hintText: "User name/Email/Phone",
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
          children: [registerBtn],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Divider(
              indent: 20,
              endIndent: 20,
              height: .5,
              color: Colors.grey.withOpacity(.8),
            )),
            Text(
              'OR',
            ),
            Expanded(
                child: Divider(
              indent: 20,
              endIndent: 20,
              height: .5,
              color: Colors.grey.withOpacity(.8),
            )),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [fbLoginBtn],
        ),
      ],
    );

    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: loginForm,
    );
  }

  Future<void> _loginFacebook() async {
    try {
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
    }
  }
}
