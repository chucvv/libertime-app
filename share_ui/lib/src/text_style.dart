import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTextStyle {
  static TextStyle formField(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: TextColors.textColorPrimary);
  }

  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 34,
        fontWeight: FontWeight.bold,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle subTitle(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: clPrimary);
  }

  static TextStyle button(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle body(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: Colors.white);
  }

  static TextStyle errorTitle(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        fontFamily: lTFontName,
        color: lTOrangeColor);
  }
}
