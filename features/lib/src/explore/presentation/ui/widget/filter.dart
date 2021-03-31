import 'package:flutter/material.dart';

import 'item_filter.dart';

class   MenuFilter extends StatefulWidget {
  @override
  _menuFilterState createState() => _menuFilterState();
}

// ignore: camel_case_types
class _menuFilterState extends State<MenuFilter> {
  String _item='';
   RangeValues _currentRangeValues =  RangeValues(0.0, 10.0);
  RangeValues _currentRangeValues1 = RangeValues(18.0, 25.0);
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      itemFilter(icon: Icons.location_on, title: 'Location'),
      InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
               'Shipley Bradford',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Medium',
              ),
            ),
            buttomIconChoose(),
          ],
        ),
        onTap: () {
          addLocation();
        },
      ),
      itemFilter(icon: Icons.transfer_within_a_station, title: 'Distance'),
      RangeSlider(
        values: _currentRangeValues,
        min: 0.0,
        max: 10.0,
        divisions: 20,
        activeColor: Color(0xFFFF5722),
        labels: RangeLabels(
          '${_currentRangeValues.start.round()}km',
          '${_currentRangeValues.end.round()}km',
        ),
        onChanged: (values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
      itemFilter(icon: Icons.location_on, title: 'Gender'),
      InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
               _item,
              
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Medium',
              ),
            ),
            buttomIconChoose(),
          ],
        ),
        onTap: () {
          addGender();
        },
      ),
      itemFilter(icon: Icons.cake, title: 'Age'),
      RangeSlider(
        values: _currentRangeValues1,
        min: 18,
        max: 25,
        divisions: 8,
        activeColor: Color(0xFFFF5722),
        labels: RangeLabels(
          _currentRangeValues1.start.round().toString(),
          _currentRangeValues1.end.round().toString(),
        ),
        onChanged: (values) {
          setState(() {
            _currentRangeValues1 = values;
          });
        },
      ),
       buttomApply(context),
      //RoundedButton(),
    ]
    );
  }

  void addGender() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        builder: (context) {
          return Container(
            height: 250.0,
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        //CupertinoButton(child: null, onPressed: null);
                        Navigator.of(context).pop();
                      })),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text('Gender',
                    style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.lightGreen,
                      child: chooseGender("assets/images/woman.png"),
                      onTap: () => _selectItem('Male'),
                    ),
                    InkWell(
                      splashColor: Colors.lightGreen,
                      child: chooseGender(
                        "assets/images/male.png",
                      ),
                      onTap: () => _selectItem('Female'),
                    ),
                    InkWell(
                      splashColor: Colors.lightGreen,
                      child: chooseGender("assets/images/other.png"),
                      onTap: () => _selectItem('Others'),
                    )
                  ],
                ),
              )
            ]),
          );
        });
  }

  void addLocation() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        builder: (context) {
          return Container(
            height: 250.0,
            child: Column(children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(
                        Icons.close,
                        size: 40,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        //CupertinoButton(child: null, onPressed: null);
                        Navigator.of(context).pop();
                      })),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text('Location',
                    style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(children: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: null,
                    shape: Border.all(color: Colors.grey),
                    //color: Colors.grey,
                    hoverColor: Colors.grey,
                    child: Row(
                        //mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Icon(Icons.location_on, color: Colors.red),
                          Text(
                            'Shipley Bradford',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Medium',
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Icon(
                              Icons.check,
                              size: 20,
                              color: Colors.red,
                            ),
                          ),
                        ]),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      //toast('Border Flat button');
                    },
                    shape: Border.all(color: Colors.grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.purple),
                        Text(
                          'Add another location',
                          //style: primaryTextStyle(),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ]),
          );
        });
  }

  void _selectItem(String name) {
    setState(() {
      _item = name;
    });
  }
}
