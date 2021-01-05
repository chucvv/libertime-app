import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_ui/awesome_ui.dart';
import '../../strings.dart';
import 'app_widget.dart';
import 'color.dart';
import 'widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(Strings.lbWelcome, fontSize: textSizeLarge, fontFamily: fontBold)
            .paddingOnly(
                top: spacing_standard_new,
                left: spacing_standard_new,
                right: spacing_standard_new),
        text(Strings.lbLetStarted,
                textColor: grocery_textColorSecondary, fontFamily: fontRegular)
            .paddingOnly(
                left: spacing_standard_new, right: spacing_standard_new),
        EditText(
          text: Strings.edtUserNameTitle,
          isPassword: false,
        ).paddingAll(spacing_standard_new),
        EditText(
          text: Strings.edtEmailAddressTitle,
          isPassword: false,
          keyboardType: TextInputType.emailAddress,
        ).paddingAll(spacing_standard_new),
        EditText(
          text: Strings.edtPasswordTitle,
        ).paddingAll(spacing_standard_new),
        Align(
          alignment: Alignment.centerRight,
          child: FittedBox(
            child: LiberButton(
              textContent: Strings.btnSignupText,
              onPressed: () {},
            ).paddingOnly(
                right: spacing_standard_new, bottom: spacing_standard_new),
          ).paddingOnly(
              top: spacing_standard_new, bottom: spacing_standard_new),
        )
      ],
    );
  }
}
