import 'package:features/src/auth/presentation/ui/widget/app_widget.dart';
import 'package:features/src/auth/presentation/ui/widget/color.dart';
import 'package:features/src/auth/presentation/ui/widget/signin.dart';
import 'package:features/src/auth/presentation/ui/widget/signup.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:common/utility.dart';
import 'package:share_ui/awesome_ui.dart';
import '../../strings.dart';

class AuthPage extends StatefulWidget {
  bool isSignIn = true;
  bool isSignUp = false;
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    changeStatusColor(clBackgroud);

    return SafeArea(
      child: Scaffold(
        backgroundColor: clBackgroud,
        body: SingleChildScrollView(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
              color: clBackgroud,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: grocery_ShadowColor,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 0.9)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    text(Strings.btnSigninText,
                            textColor: widget.isSignIn == true
                                ? AppColors.primaryColor[900]
                                : Theme.of(context).textTheme.button.color,
                            fontFamily: fontBold)
                        .paddingAll(spacing_standard_new)
                        .onTap(() {
                      widget.isSignIn = true;
                      widget.isSignUp = false;
                      setState(() {});
                    }),
                    text(Strings.btnSignupText,
                            textColor: widget.isSignUp == true
                                ? AppColors.primaryColor[900]
                                : Theme.of(context).textTheme.button.color,
                            fontFamily: fontBold)
                        .paddingAll(spacing_standard_new)
                        .onTap(() {
                      widget.isSignIn = false;
                      widget.isSignUp = true;
                      setState(() {});
                    })
                  ],
                ),
                if (widget.isSignUp) SignUp() else SignIn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
