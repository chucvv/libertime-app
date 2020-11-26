import 'package:flutter/material.dart';
import 'package:core_packages/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:signin/src/presentation/bloc/bloc.dart';
import 'package:signin/src/presentation/ui/view/splash.dart';
import '../../strings.dart';
import 'app_widget.dart';
import 'color.dart';
import 'forgot_password.dart';
import 'size_constant.dart';
import 'string.dart';
import 'widgets.dart';

class SignIn extends StatefulWidget {
  final LoginSuccessCallback successCallback;

  const SignIn({Key key, this.successCallback}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _usernameEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => GetIt.I<LoginBloc>(),
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(builder: (context, state) {
      return buildSignInForm();
    }, listener: (context, state) {
      state.maybeWhen(
        success: (credential) {
          widget.successCallback(credential);
        },
        unSuccess: (error) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('$error'),
              backgroundColor: Colors.red,
            ),
          );
        },
        invalidFormField: (errors) {},
        orElse: () {},
      );
    });
  }

  Widget buildSignInForm() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          text(grocery_lbl_sigIn_App,
                  fontSize: textSizeLarge, fontFamily: fontBold)
              .paddingOnly(
                  top: spacing_standard_new,
                  left: spacing_standard_new,
                  right: spacing_standard_new),
          text(
            grocery_lbl_Enter_email_password_to_continue,
            textColor: grocery_textColorSecondary,
            fontSize: textSizeLargeMedium,
          ).paddingOnly(
              left: spacing_standard_new, right: spacing_standard_new),
          EditText(
            text: Strings.userNameTitle,
            isPassword: false,
            keyboardType: TextInputType.name,
            mController: _usernameEditingController,
          ).paddingAll(spacing_standard_new),
          EditText(
            text: Strings.passwordTitle,
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
            mController: _passwordEditingController,
          ).paddingAll(spacing_standard_new),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              text(
                "$grocery_lbl_Forgot_password?",
                fontSize: textSizeLargeMedium,
                fontFamily: fontMedium,
              )
                  .paddingOnly(
                      left: spacing_standard_new,
                      right: spacing_standard_new,
                      bottom: spacing_standard_new)
                  .onTap(() {
                GroceryForgotPassword().launch(context);
              }),
              groceryButton(
                textContent: Strings.signinText,
                onPressed: (() {
                  final bloc = BlocProvider.of<LoginBloc>(context);
                  bloc.add(LoginEvent.login(_usernameEditingController.text,
                      _passwordEditingController.text));
                }),
              )
                  .paddingOnly(
                      right: spacing_standard_new, bottom: spacing_standard_new)
                  .paddingOnly(
                      top: spacing_standard_new, bottom: spacing_standard_new)
            ],
          )
        ],
      ),
    );
  }
}
