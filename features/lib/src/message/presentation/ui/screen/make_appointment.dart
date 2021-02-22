import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class AppointmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: StyleAppBar(
          title: Text('Make Appointment'),
          height: 60.0,
          leading: IconButton(
            color: Colors.grey,
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center());
  }
}
