import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// A widget that unfocus everything when tapped.
///
/// This implements the "Unfocus when tapping in empty space" behavior for the
/// entire application.
class Unfocus extends HookWidget {
  final Widget child;

  Unfocus({@required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
