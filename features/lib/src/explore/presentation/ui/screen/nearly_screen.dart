import 'package:flutter/material.dart';
import 'package:flutter_fimber/flutter_fimber.dart';

class NearlyScreen extends StatefulWidget {
  @override
  _NearlyScreenState createState() => _NearlyScreenState();
}

class _NearlyScreenState extends State<NearlyScreen> {
  @override
  void initState() {
    super.initState();
    Fimber.d("initState");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Nearly'),
    );
  }
}
