import 'package:features/src/auth/data/repositories/social_auth_repository.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:features/src/auth/domain/usecases/login_facebook.dart';
import 'package:features/src/auth/domain/usecases/login_google.dart';
import 'package:features/src/auth/presentation/blocs/signin/signin_bloc.dart';
import 'package:features/src/auth/presentation/strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

final authRepository = Provider<AuthRepository>((ref) => SocialAuthRepository(
    FacebookAuth.instance, GoogleSignIn(), FirebaseAuth.instance));
final facebookSignInUseCase =
    Provider((ref) => FacebookSigninUseCase(ref.read(authRepository)));
final googleSignInUseCase =
    Provider((ref) => GoogleSigninUseCase(ref.read(authRepository)));
final signInBloc = Provider((ref) =>
    SigninBloc(ref.read(facebookSignInUseCase), ref.read(googleSignInUseCase)));

class LoginScreen extends ConsumerWidget {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode nodeOne = FocusNode();
  final FocusNode nodeTwo = FocusNode();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return BlocProvider(
      create: (context) => watch(signInBloc),
      child: BlocConsumer<SigninBloc, SigninState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
            shrinkWrap: true,
            children: [
              SizedBox(height: 10.0),
              Column(
                children: [
                  Text(
                    'Hi,',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Login to connect your friends',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: _phoneNumberController,
                autofocus: true,
                focusNode: nodeOne,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                textAlign: TextAlign.center,
                maxLength: 25,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Phone",
                    helperText: "",
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10.0),
              ToglePasswordTextField(
                controller: _passwordController,
                focusNode: nodeTwo,
                textInputAction: TextInputAction.send,
                maxLength: 16,
                helperText: "Minimum is 6 character",
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildLoginButton(context)],
              ),
              SizedBox(height: 36.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Or Sign Up Using')],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFacebookButton(context),
                  SizedBox(width: 20.0),
                  _buildGoogleButton(context)
                ],
              ),
            ],
          );
        },
        listener: (context, state) {
          state.maybeWhen(
              facebookSiginSuccess: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              facebookSiginFailure: (error) {
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
              orElse: () {});
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
      text: Strings.btnLogin,
      icon: FontAwesomeIcons.signInAlt,
      backgroundColor: kPrimaryColor,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 3.0,
      onTap: () {
        // Use FirebaseCrashlytics to throw an error. Use this for
        // confirmation that errors are being correctly reported.
        FirebaseCrashlytics.instance.crash();
        BlocProvider.of<SigninBloc>(context).add(SigninEvent.onSignInPhone(
            _phoneNumberController.text, _passwordController.text));
      },
    );
  }

  Widget _buildGoogleButton(context) {
    return CircleButton(
      icon: FontAwesomeIcons.google,
      iconSize: ScreenUtil().setHeight(20),
      width: ScreenUtil().setHeight(40),
      height: ScreenUtil().setHeight(40),
      backgroundColor: Colors.redAccent,
      iconColor: Colors.white,
      onTap: () {
        BlocProvider.of<SigninBloc>(context).add(SigninEvent.onSigninGoogle());
      },
    );
  }

  Widget _buildFacebookButton(context) {
    return CircleButton(
        icon: FontAwesomeIcons.facebookF,
        iconSize: ScreenUtil().setHeight(20),
        width: ScreenUtil().setHeight(40),
        height: ScreenUtil().setHeight(40),
        backgroundColor: Colors.blue,
        iconColor: Colors.white,
        onTap: () {
          BlocProvider.of<SigninBloc>(context)
              .add(SigninEvent.onSigninFacebook());
        });
  }
}
