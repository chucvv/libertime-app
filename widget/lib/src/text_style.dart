import 'package:flutter/material.dart';
import 'package:widget/awesome_widgets.dart';

class CustomTextStyle {
  static TextStyle formField(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: lTTextColor);
  }

  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 34,
        fontWeight: FontWeight.bold,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle subTitle(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: lTPrimaryColor);
  }

  static TextStyle button(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle body(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle errorTitle(BuildContext context) {
    return Theme.of(context).textTheme.title.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: lTOrangeColor);
  }
}
