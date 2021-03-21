import 'package:features/src/auth/presentation/blocs/signin/signin_bloc.dart';
import 'package:features/src/auth/presentation/strings.dart';
import 'package:features/src/auth/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class LoginScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = useProvider(signInBlocProvider);
    return BlocProvider<SigninBloc>(
      create: (context) => bloc,
      child: BlocConsumer<SigninBloc, SigninState>(
        builder: (context, state) {
          return Column(
            children: [
              SizedBox(height: 20.0),
              Column(
                children: [
                  Text(
                    'Hi,',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Connect your friends',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              _buildLoginButton(context),
              SizedBox(
                height: 16.0,
              ),
              _buildFacebookButton(context),
              SizedBox(
                height: 16.0,
              ),
              _buildGoogleButton(context)
            ],
          );
        },
        listener: (context, state) {
          state.when(
              initial: () {},
              facebookSigninSuccess: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              facebookSigninFailure: (error) {
                showError(context, 'Facebook', error);
              },
              googleSiginSuccess: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              gooogleSiginFailure: (error) {
                showError(context, 'Google', error);
              },
              phoneSigninFailure: (error) {
                showError(context, 'Google', error);
              },
              phoneSigninSuccess: () {},
              anonymousSigninFailure: (error) {
                showError(context, 'Google', error);
              },
              anonymousSigninSuccess: () {
                Navigator.popAndPushNamed(context, '/home');
              });
        },
      ),
    );
  }

  void showError(BuildContext context, String title, String message) {
    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
    )..show(context);
  }

  Widget _buildLoginButton(context) {
    return RoundedButton(
      text: Strings.btnAnonymousSignIn,
      icon: FontAwesomeIcons.heartbeat,
      backgroundColor: AppColors.primaryColor[500],
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 6.0,
      onTap: () {
        BlocProvider.of<SigninBloc>(context)
            .add(SigninEvent.onAnonymousSignIn());
      },
    );
  }

  Widget _buildGoogleButton(context) {
    return RoundedButton(
      text: Strings.btnGoogleSignIn,
      icon: FontAwesomeIcons.google,
      backgroundColor: AppColors.primaryColor[500],
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 6.0,
      onTap: () {
        BlocProvider.of<SigninBloc>(context).add(SigninEvent.onSigninGoogle());
      },
    );
  }

  Widget _buildFacebookButton(context) {
    return RoundedButton(
      text: Strings.btnFacebookSignIn,
      icon: FontAwesomeIcons.facebookF,
      backgroundColor: AppColors.primaryColor[500],
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 6.0,
      onTap: () {
        BlocProvider.of<SigninBloc>(context)
            .add(SigninEvent.onSigninFacebook());
      },
    );
  }
}
