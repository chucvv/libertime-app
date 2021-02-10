import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primaryColor = <int, Color>{
    50: Color(0xFFE2EFFD),
    100: Color(0xFFB6D6FA),
    200: Color(0xFF86BBF6),
    300: Color(0xFF569FF2),
    400: Color(0xFF318BF0),
    500: Color(0xFF0D76ED),
    600: Color(0xFF0B6EEB),
    700: Color(0xFF0963E8),
    800: Color(0xFF0759E5),
    900: Color(0xFF0346E0),
  };

  static const Map<int, Color> primaryColorAccent = <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(0xFFD4DFFF),
    400: Color(0xFFA1B8FF),
    700: Color(0xFF88A5FF),
  };
}

class TextColors {
  TextColors._();

  static const textColorPrimary = Color(0xFF333333);
  static const textColorSecondary = Color(0xFFC4C4C4);
  static const textColorThird = Color(0xFFDCDCDC);
  static const textColorGrey = Color(0xFFB4BBC2);
}

const clPrimary = Color(0xFF0D76ED);
const lTNormalColor = Color(0xFF4E342E);
const clBackgroud = Color(0xFFF6F7FA);
const clNavigatorBar = Color(0xAAFFFFFF);
const clNavigatorBarBorder = Color(0x1AFFFFFF);
const lTOrangeColor = Colors.amberAccent;
const clWhite = Color(0xFFFFFFFF);
