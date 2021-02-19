import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:common/utility.dart';
import 'package:share_ui/awesome_ui.dart';

import '../../strings.dart';
import 'app_widget.dart';
import 'color.dart';
import 'widgets.dart';

class ForgotPassword extends StatefulWidget {
  static String tag = '/GroceryForgotPassword';

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    changeStatusColor(clBackgroud);

    return Scaffold(
      backgroundColor: grocery_app_background,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: title(Strings.btnForgotPassword, grocery_colorPrimary,
            grocery_color_white, context),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          decoration: const BoxDecoration(
            color: grocery_color_white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
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
              const SizedBox(height: spacing_standard),
              text(Strings.btnResetPassword,
                      fontSize: textSizeLarge, fontFamily: fontBold)
                  .paddingOnly(
                      top: spacing_standard_new,
                      left: spacing_standard_new,
                      right: spacing_standard_new),
              text(
                Strings.lbEnterEmailForResetPassword,
                textColor: grocery_textColorSecondary,
              ).paddingOnly(
                  left: spacing_standard_new, right: spacing_standard_new),
              const SizedBox(height: spacing_standard_new),
              EditText(
                text: Strings.edtEmailAddressTitle,
                isPassword: false,
                keyboardType: TextInputType.emailAddress,
              ).paddingAll(spacing_standard_new),
              Align(
                alignment: Alignment.centerRight,
                child: FittedBox(
                  child: LiberButton(
                    textContent: Strings.btnSendText,
                    onPressed: () {},
                  ).paddingOnly(
                      right: spacing_standard_new,
                      bottom: spacing_standard_new),
                ).paddingOnly(
                    top: spacing_standard_new, bottom: spacing_standard_new),
              )
            ],
          ),
        ),
      ),
    );
  }
}
