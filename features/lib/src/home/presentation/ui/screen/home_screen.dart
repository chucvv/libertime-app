import 'package:features/src/home/data/repositories/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:share_ui/awesome_ui.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<HomeScreen> {
  bool chng = true;
  bool atCenter = true;
  bool _triggerNotFound = false;
  bool _timeout = false;
  CardController _cardController;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    Fimber.d("initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final peopleAvatarWidget = Align(
        alignment: Alignment.topCenter,
        child: TinderSwapCard(
          animDuration: 800,
          orientation: AmassOrientation.TOP,
          totalNum: peoples.length,
          stackNum: 3,
          swipeEdge: 10.0,
          maxWidth: MediaQuery.of(context).size.width - 30.0,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          minWidth: MediaQuery.of(context).size.width - 50.0,
          minHeight: MediaQuery.of(context).size.height * 0.5,
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
        ));
    final backgroundAnimatedWidget = AnimatedContainer(
      duration: Duration(milliseconds: 600),
      curve: Curves.fastLinearToSlowEaseIn,
      color: !atCenter
          ? chng
              ? Colors.blueGrey.shade100
              : Colors.pinkAccent.shade100
          : clBackgroud,
      child: Center(
        child: _triggerNotFound
            ? !_timeout
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      SizedBox(
                        height: ScreenUtil().setHeight(30.0),
                      ),
                      Text(
                        "Searching nearby matchings ...",
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(18.0),
                            fontWeight: FontWeight.w200,
                            color: Colors.grey.shade600),
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: ScreenUtil().setHeight(50.0),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image(
                            width: ScreenUtil().setWidth(100),
                            height: ScreenUtil().setWidth(100),
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/images/abhishekProfile.JPG')),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(60.0)),
                        child: Text("There is no one new around you ...",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                wordSpacing: 1.2,
                                fontSize: ScreenUtil().setSp(18.0),
                                fontWeight: FontWeight.w300,
                                color: Colors.grey.shade600)),
                      )
                    ],
                  )
            : Container(),
      ),
    );
    final emotionWidget = Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(60.0)),
            child: ShaderMask(
                child: Icon(
                  IconFonts.sad,
                  size: ScreenUtil().setHeight(40),
                ),
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) {
                  return LinearGradient(
                      colors: [
                        Colors.lightGreenAccent.shade400,
                        Colors.lightGreenAccent.shade700,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.0, 1.0]).createShader(bounds);
                }),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(60.0)),
            child: ShaderMask(
                child: Icon(
                  IconFonts.grin_hearts,
                  size: ScreenUtil().setHeight(40),
                ),
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) {
                  return LinearGradient(
                      colors: [
                        Colors.redAccent,
                        Colors.red,
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.0, 1.0]).createShader(bounds);
                }),
          ),
        ],
      ),
    );
    final refreshWidget = Positioned(
        bottom: 10.0,
        left: 5.0,
        right: 5.0,
        child: InkWell(
          onTap: () {
            Fimber.d("On refresh here");
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(ScreenUtil().setWidth(6.0)),
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(60.0)),
                child: ShaderMask(
                    child: Icon(
                      IconFonts.arrows_cw,
                    ),
                    blendMode: BlendMode.srcATop,
                    shaderCallback: (bounds) {
                      return LinearGradient(
                          colors: [
                            Theme.of(context).secondaryHeaderColor,
                            Theme.of(context).primaryColor,
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [0.0, 1.0]).createShader(bounds);
                    }),
              ),
            ],
          ),
        ));
    return Stack(
      children: <Widget>[
        backgroundAnimatedWidget,
        peopleAvatarWidget,
        emotionWidget,
        refreshWidget,
      ],
    );
  }
}
