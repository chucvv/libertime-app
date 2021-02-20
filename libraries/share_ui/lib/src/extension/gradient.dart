import 'package:flutter/material.dart';

extension Gradient on Widget {
  Widget centerLinearGradient(
      {BoxShape shape = BoxShape.rectangle,
      EdgeInsetsGeometry padding,
      BorderRadiusGeometry borderRadius}) {
    return Container(
      child: this,
      padding: padding,
      decoration: BoxDecoration(
        shape: shape,
        borderRadius: borderRadius,
        gradient: LinearGradient(
            colors: [
              Colors.redAccent,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            tileMode: TileMode.repeated),
      ),
    );
  }
}
