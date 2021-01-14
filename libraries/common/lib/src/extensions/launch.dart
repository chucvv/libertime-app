import 'dart:async';
import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Future<T> launch<T>(BuildContext context, {bool isNewTask = false}) {
    if (this is StatelessWidget || this is StatefulWidget) {
      if (isNewTask) {
        return Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => this),
            (route) => route == null);
      } else {
        return Navigator.of(context)
            .push(MaterialPageRoute<T>(builder: (_) => this));
      }
    } else {
      throw Exception('Widget should be StatelessWidget or StatefulWidget');
    }
  }
}
