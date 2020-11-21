import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login/src/presentation/util/input_helper.dart';
import 'package:widget/awesome_widgets.dart';

typedef void CaretMoved(Offset globalCaretPosition);

// Helper widget to track caret position.
class TrackingTextField extends StatefulWidget {
  final CaretMoved onCaretMoved;
  final TextEditingController textEditingController;
  final String hint;
  final String label;
  final String error;
  final TextInputType keyboardType;
  final bool autoFocus;
  final TextInputAction textInputAction;
  final Icon icon;
  const TrackingTextField(
      {Key key,
      this.onCaretMoved,
      this.hint,
      this.label,
      this.error,
      this.keyboardType = TextInputType.text,
      this.textEditingController,
      this.autoFocus = false,
      this.textInputAction = TextInputAction.next,
      this.icon})
      : super(key: key);

  @override
  _TrackingTextFieldState createState() => _TrackingTextFieldState();
}

class _TrackingTextFieldState extends State<TrackingTextField> {
  final GlobalKey _fieldKey = GlobalKey();
  Timer _debounceTimer;

  @override
  void initState() {
    widget.textEditingController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject fieldBox =
              _fieldKey.currentContext.findRenderObject();
          final Offset caretPosition = getCaretPosition(fieldBox);

          if (widget.onCaretMoved != null) {
            widget.onCaretMoved(caretPosition);
          }
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: widget.keyboardType,
        autofocus: widget.autoFocus,
        textInputAction: widget.textInputAction,
        style: CustomTextStyle.formField(context),
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: CustomTextStyle.subTitle(context),
            border: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0)),
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).accentColor, width: 1.0)),
            //labelText: widget.label,
            prefixIcon: widget.icon,
            errorStyle: CustomTextStyle.errorTitle(context),
            errorText: widget.error ?? ""),
        key: _fieldKey,
        controller: widget.textEditingController,
        obscureText: widget.keyboardType == TextInputType.visiblePassword);
  }
}
