import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_module/utility.dart';
import 'package:share_ui/awesome_ui.dart';
import 'package:auth/src/domain/entities/credential.dart';
import 'package:auth/src/presentation/ui/view/app_widget.dart';
import 'package:auth/src/presentation/ui/view/color.dart';
import 'package:auth/src/presentation/ui/view/signin.dart';
import 'package:auth/src/presentation/ui/view/signup.dart';
import '../../strings.dart';

typedef LoginSuccessCallback = Function(Credential);

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
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    changeStatusColor(clWhite);

    return SafeArea(
      child: Scaffold(
        backgroundColor: clWhiteBackgroud,
        body: SingleChildScrollView(
          child: Container(
            width: width,
            decoration: const BoxDecoration(
              color: clWhite,
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
                                : TextColors.textColorPrimary,
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
                                : TextColors.textColorPrimary,
                            fontFamily: fontBold)
                        .paddingAll(spacing_standard_new)
                        .onTap(() {
                      widget.isSignIn = false;
                      widget.isSignUp = true;
                      setState(() {});
                    })
                  ],
                ),
                if (widget.isSignUp)
                  SignUp()
                else
                  SignIn(
                    successCallback: widget.successCallback,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
