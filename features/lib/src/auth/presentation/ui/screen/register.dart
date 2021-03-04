import 'package:flutter/material.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with AutomaticKeepAliveClientMixin<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode nodeOne = FocusNode();
  final FocusNode nodeTwo = FocusNode();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final registerBtn = RoundedButton(
      text: 'Register',
      icon: FontAwesomeIcons.userPlus,
      backgroundColor: kPrimaryColor,
      borderRadius: BorderRadius.all(Radius.circular(24.0)),
      padding:
          EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0, bottom: 12.0),
      elevation: 3.0,
      onTap: () {
        FocusScope.of(context).requestFocus(nodeOne);
      },
    );

    final registerForm = ListView(
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
              'Create an account to connect your friends',
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
          children: [registerBtn],
        ),
      ],
    );

    return registerForm;
  }
}
