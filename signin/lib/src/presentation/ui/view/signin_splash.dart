import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'app_widget.dart';
import 'string.dart';
import 'color.dart';
import 'size_constant.dart';
import 'images.dart';
import 'widgets.dart';
import 'signup.dart';

class SigninSplashScreen extends StatefulWidget {
  static String tag = '/GrocerySplashScreen';

  @override
  _SigninSplashScreenState createState() => _SigninSplashScreenState();
}

class _SigninSplashScreenState extends State<SigninSplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Future<Timer> startTime() async {
    const _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    setState(() {
//      GroceryDashBoardScreen().launch(context);
    });
  }

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
          Image.asset(
            grocery_ic_logo,
            width: width * 0.35,
            height: width * 0.35,
            fit: BoxFit.fill,
          ).center(),
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
                        GrocerySignUp(
                          isSignIn: true,
                          isSignUp: false,
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
                    GrocerySignUp(
                      isSignUp: true,
                      isSignIn: false,
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
