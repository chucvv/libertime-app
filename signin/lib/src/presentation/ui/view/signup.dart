import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'app_widget.dart';
import 'color.dart';
import 'size_constant.dart';
import 'string.dart';
import 'widgets.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          text(grocery_lbl_Welcome_app,
                  fontSize: textSizeLarge, fontFamily: fontBold)
              .paddingOnly(
                  top: spacing_standard_new,
                  left: spacing_standard_new,
                  right: spacing_standard_new),
          text(grocery_lbl_let_Started,
                  textColor: grocery_textColorSecondary,
                  fontSize: textSizeLargeMedium,
                  fontFamily: fontRegular)
              .paddingOnly(
                  left: spacing_standard_new, right: spacing_standard_new),
          EditText(
            text: grocery_lbl_UserName,
            isPassword: false,
          ).paddingAll(spacing_standard_new),
          EditText(
            text: grocery_lbl_Email_Address,
            isPassword: false,
            keyboardType: TextInputType.emailAddress,
          ).paddingAll(spacing_standard_new),
          EditText(
            text: grocery_lbl_Password,
            isPassword: true,
          ).paddingAll(spacing_standard_new),
          Align(
            alignment: Alignment.centerRight,
            child: FittedBox(
              child: groceryButton(
                textContent: grocery_lbl_Next,
                onPressed: (() {
                  //GroceryAddNumber().launch(context);
                }),
              ).paddingOnly(
                  right: spacing_standard_new, bottom: spacing_standard_new),
            ).paddingOnly(
                top: spacing_standard_new, bottom: spacing_standard_new),
          )
        ],
      ),
    );
  }
}
