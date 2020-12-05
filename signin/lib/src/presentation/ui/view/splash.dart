import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:core_packages/core.dart';
import 'package:signin/src/domain/entities/credential.dart';
import 'app_widget.dart';
import 'auth_widget.dart';
import 'string.dart';
import 'color.dart';
import 'size_constant.dart';
import 'widgets.dart';

typedef LoginSuccessCallback = Function(Credential);

class SigninSplashScreen extends StatefulWidget {
  final LoginSuccessCallback successCallback;

  const SigninSplashScreen({Key key, this.successCallback}) : super(key: key);
  @override
  _SigninSplashScreenState createState() => _SigninSplashScreenState();
}

class _SigninSplashScreenState extends State<SigninSplashScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    changeStatusColor(grocery_colorPrimary);

    return Scaffold(
      backgroundColor: grocery_colorPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(spacing_standard_new),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                text(grocery_lbl_Welcome_msg,
                        textColor: grocery_color_white,
                        fontSize: textSizeXXLarge,
                        fontFamily: fontSemiBold,
                        isCentered: true,
                        isLongText: true)
                    .paddingOnly(left: spacing_control, right: spacing_control),
                SizedBox(
                  height: spacing_xxLarge,
                ),
                Container(
                    width: width * 0.35,
                    child: groceryButton1(
                      textContent: grocery_lbl_Sign_In,
                      onPressed: (() {
                        AuthWidget(
                          isSignIn: true,
                          isSignUp: false,
                          successCallback: widget.successCallback,
                        ).launch(context);
                      }),
                    )),
                SizedBox(
                  height: spacing_standard,
                ),
                FittedBox(
                    child: groceryButton(
                  textContent: grocery_lbl_Sign_Up,
                  onPressed: (() {
                    AuthWidget(
                      isSignUp: true,
                      isSignIn: false,
                      successCallback: widget.successCallback,
                    ).launch(context);
                  }),
                ))
              ],
            ).paddingOnly(bottom: spacing_xxLarge),
          )
        ],
      ),
    );
  }
}
