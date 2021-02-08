import 'package:features/src/home/data/repositories/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool chng = true;
  bool atCenter = true;
  bool _triggerNotFound = false;
  bool _timeout = false;
  CardController _cardController;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Image(
                        image: AssetImage('assets/images/closeRounded.png'),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (bounds) {
                        return LinearGradient(
                            colors: [
                              Theme.of(context).accentColor,
                              Theme.of(context).primaryColor
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(15.0)),
                  height: ScreenUtil().setHeight(60.0),
                  width: ScreenUtil().setHeight(60.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child:
                          Image(image: AssetImage('assets/images/round.png')),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.amber.shade700,
                              Colors.amber.shade400
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(ScreenUtil().setSp(30.0)),
                  height: ScreenUtil().setHeight(110.0),
                  width: ScreenUtil().setHeight(110.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(offset: Offset(0.0, 0.0), color: Colors.grey),
                        BoxShadow(
                            offset: Offset(1.0, 1.0),
                            color: Colors.grey,
                            blurRadius: 5.0),
                        BoxShadow(
                            offset: Offset(-1.0, -1.0),
                            color: Colors.white,
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0)),
                  child: ShaderMask(
                      child: Icon(
                        Icons.favorite,
                        size: ScreenUtil().setHeight(65.0),
                      ),
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (bounds) {
                        return LinearGradient(
                            colors: [
                              Colors.tealAccent.shade700,
                              Colors.tealAccent.shade200
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.0, 1.0]).createShader(bounds);
                      }),
                ),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: TinderSwapCard(
              animDuration: 800,
              orientation: AmassOrientation.TOP,
              totalNum: peoples.length,
              stackNum: 3,
              swipeEdge: 10.0,
              maxWidth: MediaQuery.of(context).size.width - 10.0,
              maxHeight: MediaQuery.of(context).size.height * 0.74,
              minWidth: MediaQuery.of(context).size.width - 50.0,
              minHeight: MediaQuery.of(context).size.height * 0.73,
              cardBuilder: (context, index) {
                return peoples[index];
              },
              cardController: _cardController,
              swipeUpdateCallback: (details, align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping
                  setState(() {
                    if (align.x < -1) atCenter = false;
                    chng = true;
                  });
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
                  setState(() {
                    if (align.x > 1) atCenter = false;
                    chng = false;
                  });
                }
              },
              swipeCompleteCallback: (orientation, index) {
                /// Get orientation & index of swiped card!
                setState(() {
                  atCenter = true;
                  if (index == peoples.length - 1) {
                    _triggerNotFound = true;
                    Future.delayed(Duration(seconds: 5), () {
                      _timeout = true;
                      setState(() {});
                    });
                  }
                });
              },
            )),
      ],
    );
  }
}
