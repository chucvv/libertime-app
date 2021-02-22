import 'package:flutter/material.dart';

extension RoundContainer on Widget {
  Widget topRound(
      {double radius = 40.0,
      Color background = Colors.white,
      Color border = Colors.white}) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      child: this,
      decoration: BoxDecoration(
        border: Border.all(
            color: border, // set border color
            width: 1.0),
        color: background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(0.0, 5.0),
              blurRadius: 15.0)
        ],
      ),
    );
  }
}
