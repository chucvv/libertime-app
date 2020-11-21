import 'package:core_packages/core.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/login.dart';
import 'package:login/src/presentation/bloc/bloc.dart';
import 'package:login/src/presentation/bloc/login_error.dart';
import 'package:login/src/presentation/strings.dart';
import 'package:login/src/presentation/util/teddy_controller.dart';
import 'package:login/src/presentation/ui/view/tracking_textfield.dart';
import 'package:widget/awesome_widgets.dart';

import 'teddy_login_page.dart';

class TeddyLoginWidget extends StatefulWidget {
  final LoginBloc loginBloc;
  final LoginSuccess callback;
  const TeddyLoginWidget({Key key, this.loginBloc, this.callback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TeddyLoginWidget();
}

class _TeddyLoginWidget extends State<TeddyLoginWidget> {
  final _teddyController = TeddyController();
  final _userNameEditingController = TextEditingController();
  final _passwordEditingController = TextEditingController();

  @override
  void dispose() {
    _userNameEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
            success: (user) {
              _teddyController.play("success");
              widget.callback(user);
            },
            unSuccess: (error) {
              _teddyController.play("fail");
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('$error'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () => {});
      },
      child: Column(
        children: <Widget>[
          teddyArea(),
          buildForm(),
        ],
      ),
    );
  }

  Widget buildForm() {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      final errors = state is InvalidFormField ? state.errors : null;
      return Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
          child: Column(
            children: <Widget>[
              buildFormField(
                  Icon(
                    Icons.email,
                    color: ltIconColor,
                  ),
                  Strings.userNameTitle,
                  Strings.userNameHint,
                  errors
                      .getOrDefault(LoginFormField.userName, null)
                      ?.firstOrNull,
                  _userNameEditingController,
                  (str) => LoginEvent.setEmail(str),
                  keyboardType: TextInputType.emailAddress,
                  autoFocus: true),
              const SizedBox(
                height: 10.0,
              ),
              buildFormField(
                  Icon(
                    Icons.lock,
                    color: ltIconColor,
                  ),
                  Strings.passwordTitle,
                  Strings.passwordHint,
                  errors
                      .getOrDefault(LoginFormField.password, null)
                      ?.firstOrNull,
                  _passwordEditingController,
                  (str) => LoginEvent.setPassword(str),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.send),
              const SizedBox(
                height: 10.0,
              ),
              loginBtn(state),
            ],
          ));
    });
  }

  Widget buildFormField(
    Icon icon,
    String label,
    String hint,
    String error,
    TextEditingController textEditingController,
    LoginEvent Function(String) handler, {
    TextInputType keyboardType = TextInputType.text,
    bool autoFocus = false,
    TextInputAction textInputAction = TextInputAction.next,
  }) {
    textEditingController.addListener(() {
      widget.loginBloc.add(handler(textEditingController.text));
    });

    return TrackingTextField(
        icon: icon,
        label: label,
        hint: hint,
        error: error,
        keyboardType: keyboardType,
        autoFocus: autoFocus,
        textInputAction: textInputAction,
        onCaretMoved: (Offset caret) => bearBehavior(keyboardType, caret),
        textEditingController: textEditingController);
  }

  void bearBehavior(TextInputType keyboardType, Offset caret) {
    if (keyboardType == TextInputType.visiblePassword) {
      _teddyController.coverEyes(caret != null);
      _teddyController.lookAt(null);
    } else {
      _teddyController.lookAt(caret);
    }
  }

  Widget teddyArea() {
    return Container(
        height: 150,
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: FlareActor(
          Strings.teddyResourcePath,
          shouldClip: false,
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          controller: _teddyController,
        ));
  }

  Function _stopLoading;

  Widget loginBtn(LoginState state) {
    final hasFormError = state is InvalidFormField && state.errors.isNotEmpty;

    if (state is! Loading && _stopLoading != null) {
      _stopLoading();
    }

    return ArgonButton(
      height: Dimens.lt_btn_height,
      width: 350,
      borderRadius: Dimens.lt_btn_round_radius,
      color: ltIconColor,
      disabledColor: lTDisableStateColor,
      loader: Container(
        padding: const EdgeInsets.all(10),
        child: const SpinKitDoubleBounce(color: Colors.white),
      ),
      state: hasFormError ? ButtonState.Disable : ButtonState.Idle,
      onTap: (startLoading, stopLoading, btnState) {
        if (btnState == ButtonState.Idle) {
          startLoading();
          _stopLoading = stopLoading;
          widget.loginBloc.add(LoginEvent.login(_userNameEditingController.text,
              _passwordEditingController.text));
        }
      },
      child: Text(Strings.loginHint, style: CustomTextStyle.button(context)),
    );
  }
}
