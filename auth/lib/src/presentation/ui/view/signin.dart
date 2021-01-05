import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_ui/awesome_ui.dart';
import 'package:auth/src/di/injection_container.dart';
import 'package:auth/src/presentation/bloc/bloc.dart';
import 'package:share_module/extensions.dart';
import 'package:auth/src/presentation/ui/widget/auth_widget.dart';
import '../../strings.dart';
import 'app_widget.dart';
import 'color.dart';
import 'forgot_password.dart';
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
      create: (_) => getIt<LoginBloc>(),
      child: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(builder: (context, state) {
      return buildSignInForm(context);
    }, listener: (context, state) {
      state.maybeWhen(
        success: (credential) {
          widget.successCallback(credential);
        },
        unSuccess: (error) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
              backgroundColor: Colors.red,
            ),
          );
        },
        invalidFormField: (errors) {},
        orElse: () {},
      );
    });
  }

  Widget buildSignInForm(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(Strings.lbSigIn, fontSize: textSizeLarge, fontFamily: fontBold)
            .paddingOnly(
                top: spacing_standard_new,
                left: spacing_standard_new,
                right: spacing_standard_new),
        text(
          Strings.lbEnterEmailPasswordToContinue,
          textColor: grocery_textColorSecondary,
          fontSize: textSizeLargeMedium,
        ).paddingOnly(left: spacing_standard_new, right: spacing_standard_new),
        EditText(
          text: Strings.edtUserNameTitle,
          isPassword: false,
          keyboardType: TextInputType.name,
          mController: _usernameEditingController,
        ).paddingAll(spacing_standard_new),
        EditText(
          text: Strings.edtPasswordTitle,
          keyboardType: TextInputType.visiblePassword,
          mController: _passwordEditingController,
        ).paddingAll(spacing_standard_new),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            text(
              Strings.btnForgotPassword,
              fontSize: textSizeLargeMedium,
              fontFamily: fontMedium,
            )
                .paddingOnly(
                    left: spacing_standard_new,
                    right: spacing_standard_new,
                    bottom: spacing_standard_new)
                .onTap(() {
              ForgotPassword().launch(context);
            }),
            LiberButton(
              textContent: Strings.btnSigninText,
              onPressed: () {
                final bloc = BlocProvider.of<LoginBloc>(context);
                bloc.add(LoginEvent.login(_usernameEditingController.text,
                    _passwordEditingController.text));
              },
            )
                .paddingOnly(
                    right: spacing_standard_new, bottom: spacing_standard_new)
                .paddingOnly(
                    top: spacing_standard_new, bottom: spacing_standard_new)
          ],
        )
      ],
    );
  }
}
