import 'dart:ui';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

Future<void> changeStatusColor(Color color) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(
        useWhiteForeground(color));
  } on Exception {}
}
