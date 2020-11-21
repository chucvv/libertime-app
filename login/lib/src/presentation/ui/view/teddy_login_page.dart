import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/src/domain/entities/user.dart';
import 'package:login/src/presentation/bloc/bloc.dart';
import 'package:login/src/presentation/ui/view/teddy_login_widget.dart';

typedef LoginSuccess = Function(User);

class TeddyLoginPage extends StatelessWidget {
  final LoginBloc loginBloc;

  final LoginSuccess onLoginSuccess;

  const TeddyLoginPage({Key key, this.loginBloc, this.onLoginSuccess})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EdgeInsets devicePadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          // call this method here to hide soft keyboard
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(children: <Widget>[
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorLight
                ])),
          )),
          Positioned.fill(
            child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    left: 6.0, right: 6.0, top: devicePadding.top + 6.0),
                child: BlocProvider(
                  create: (context) => loginBloc,
                  child: TeddyLoginWidget(
                    loginBloc: loginBloc,
                    callback: onLoginSuccess,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
