import 'package:flutter/material.dart';

extension RoundContainer on Widget {
  Widget topRound({double radius = 36.0, Color background = Colors.white}) {
    return Container(
      child: this,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
      ),
    );
  }
}
