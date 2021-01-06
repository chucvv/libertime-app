import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primaryColor = <int, Color>{
    50: Color(0xFFFFF2EF),
    100: Color(0xFFFEDFD7),
    200: Color(0xFFFECABD),
    300: Color(0xFFFEB4A2),
    400: Color(0xFFFDA48E),
    500: clPrimary,
    600: Color(0xFFFD8C72),
    700: Color(0xFFFC8167),
    800: Color(0xFFFC775D),
    900: Color(0xFFFC654A),
  };
}

class TextColors {
  TextColors._();

  static const textColorPrimary = Color(0xFF333333);
  static const textColorSecondary = Color(0xFFC4C4C4);
  static const textColorThird = Color(0xFFDCDCDC);
  static const textColorGrey = Color(0xFFB4BBC2);
}

const clPrimary = Color(0xFFFD947A);
const lTNormalColor = Color(0xFF4E342E);
const clWhiteBackgroud = Color(0xFFF6F7FA);
const clNavigatorBar = Color(0xAAFFFFFF);
const clNavigatorBarBorder = Color(0x1AFFFFFF);
const lTOrangeColor = Colors.amberAccent;
const clWhite = Color(0xFFFFFFFF);
