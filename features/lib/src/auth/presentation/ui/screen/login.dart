import 'package:features/src/auth/data/repositories/default_auth_repository.dart';
import 'package:features/src/auth/domain/usecases/login_facebook.dart';
import 'package:features/src/auth/presentation/blocs/signin/signin_bloc.dart';
import 'package:features/src/auth/presentation/strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

final authRepository = Provider((ref) => DefaultAuthRepository());
final facebookSignInUseCase =
    Provider((ref) => FacebookSigninUseCase(ref.read(authRepository)));
final signInBloc =
    Provider((ref) => SigninBloc(ref.read(facebookSignInUseCase)));

class LoginScreen extends ConsumerWidget {
  final _logger = Logger('LoginScreen');
  final TextEditingController _usernameController = TextEditingController();
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
                controller: _usernameController,
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
              facebookSiginFailure: (error) {},
              googleSiginSuccess: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              gooogleSiginFailure: (error) {},
              orElse: () {});
        },
      ),
    );
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
        FocusScope.of(context).requestFocus(nodeOne);
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
      onTap: _signInWithGoogle,
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

  Future<void> _signInWithGoogle() async {
    // Trigger the authentication flow
    final googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    _logger.fine(userCredential.toString());
  }
}
