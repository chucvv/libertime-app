import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

Widget buttomIconChoose() {
  return Row(
     mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      
          Icon(Icons.keyboard_arrow_right, color: Colors.grey),
    ],
  );
}
Widget itemFilter({IconData icon, String title}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
    child: Row(
      children: [
        Icon(icon, size: 20, color: ktextColorSecondary),
        SizedBox(
          width: 16,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Bold',
          ),
          //style: headline2,
        ),
      ],
    ),
  );
}

//custom gender in showMadalButtomSheet
Widget chooseGender(String image) {
  return Container(
    // height: 80,
    // width: 80,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
    child: Padding(
        padding: EdgeInsets.all(17),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                image,
              ),
              SizedBox(height: 15),
            ],
          ),
        )),
  );
}

//Buttom apply of filter
Widget buttomApply(BuildContext context) {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () {},
    child: Container(
        // width: 300,
        // height: 65,
        alignment: Alignment.bottomCenter,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 10,
        child: Text('APPLY',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            gradient: LinearGradient(colors: <Color>[
              Colors.orange,
              Colors.purple,
            ]))),
    textColor: Colors.white,
  );
}
