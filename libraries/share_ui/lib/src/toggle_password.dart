import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class ToglePasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final int maxLength;
  final String hintText;
  final String helperText;

  ToglePasswordTextField(
      {Key key,
      this.controller,
      this.focusNode,
      this.textInputAction = TextInputAction.next,
      this.maxLength,
      this.hintText = 'Password',
      this.helperText})
      : super(key: key);

  @override
  _ToglePasswordTextFieldState createState() => _ToglePasswordTextFieldState();
}

class _ToglePasswordTextFieldState extends State<ToglePasswordTextField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isHidden,
      textInputAction: widget.textInputAction,
      textAlign: TextAlign.center,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: widget.hintText,
          suffix: InkWell(
            onTap: _togglePasswordView,
            child: Icon(
              Icons.visibility,
              color: kPrimaryColor,
              size: 20,
            ),
          ),
          helperText: widget.helperText,
          border: OutlineInputBorder()),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
