import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signin/src/presentation/ui/view/splash.dart';
import '../../strings.dart';
import 'signin.dart';
import 'signup.dart';
import 'color.dart';
import 'size_constant.dart';
import 'app_widget.dart';

class AuthWidget extends StatefulWidget {
  bool isSignIn;
  bool isSignUp;
  final LoginSuccessCallback successCallback;
  AuthWidget({this.isSignIn, this.isSignUp, this.successCallback});

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  void dispose() {
    super.dispose();
    changeStatusColor(grocery_colorPrimary);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    changeStatusColor(grocery_color_white);

    return Scaffold(
      backgroundColor: grocery_app_background,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: spacing_large,
            ),
            Container(
              width: width,
              decoration: BoxDecoration(
                color: grocery_color_white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: const Radius.circular(20.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: grocery_ShadowColor,
                      blurRadius: 20.0,
                      offset: Offset(0.0, 0.9)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      text(Strings.signinText,
                              textColor: widget.isSignIn == true
                                  ? grocery_textGreenColor
                                  : grocery_textColorPrimary,
                              fontSize: textSizeLargeMedium,
                              fontFamily: fontBold)
                          .paddingAll(spacing_standard_new)
                          .onTap(() {
                        widget.isSignIn = true;
                        widget.isSignUp = false;
                        setState(() {});
                      }),
                      text(Strings.signupText,
                              textColor: widget.isSignUp == true
                                  ? grocery_textGreenColor
                                  : grocery_textColorPrimary,
                              fontSize: textSizeLargeMedium,
                              fontFamily: fontBold)
                          .paddingAll(spacing_standard_new)
                          .onTap(() {
                        widget.isSignIn = false;
                        widget.isSignUp = true;
                        setState(() {});
                      })
                    ],
                  ),
                  widget.isSignUp
                      ? SignUp()
                      : SignIn(
                          successCallback: widget.successCallback,
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
