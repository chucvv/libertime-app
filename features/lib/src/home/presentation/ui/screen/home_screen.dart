import 'package:features/src/home/data/repositories/data.dart';
import 'package:features/src/home/presentation/ui/widget/match_widget.dart';
import 'package:features/src/information/presentation/model/user_info_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:share_ui/awesome_ui.dart';

import '../../strings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<HomeScreen> {
  bool isLiked = false;
  bool atCenter = true;
  bool _triggerNotFound = false;
  bool _timeout = false;
  final _cardController = CardController();
  final _likeFireworkController = FireworkController();

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
            return MatchWidget(
              userInfo: peoples[index],
              onTap: (userId) {
                Navigator.of(context).pushNamed("/person_info",
                    arguments: UserInfoArgument(userId));
              },
            );
          },
          cardController: _cardController,
          swipeUpdateCallback: (details, align) {
            /// Get swiping card's alignment
            if (align.x < 0) {
              //Card is LEFT swiping
              setState(() {
                if (align.x < -1) {
                  atCenter = false;
                }
                isLiked = false;
              });
            } else if (align.x > 0) {
              //Card is RIGHT swiping
              setState(() {
                if (align.x > 1) {
                  atCenter = false;
                }
                isLiked = true;
              });
            }
          },
          swipeCompleteCallback: (orientation, index) {
            /// Get orientation & index of swiped card!
            if (isLiked) {
              _likeFireworkController.fire();
            }
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
    final animationWidget = AnimatedContainer(
      duration: Duration(milliseconds: 600),
      curve: Curves.fastLinearToSlowEaseIn,
      decoration: !atCenter
          ? isLiked
              ? BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.white,
                      kAccentColor.withOpacity(0.5)
                    ],
                  ),
                )
              : null
          : null,
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
    final controlsWidget = Positioned(
      bottom: 0.0,
      left: ScreenUtil().setHeight(10.0),
      right: ScreenUtil().setHeight(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FireworkButton(
            onTap: () {
              _cardController.triggerLeft();
            },
            size: ScreenUtil().setHeight(50.0),
            circleColor: CircleColor(
                start: Colors.lightGreenAccent.shade400,
                end: Colors.lightGreenAccent.shade700),
            bubblesColor: BubblesColor(
              dotPrimaryColor: Colors.lightGreenAccent,
              dotSecondaryColor: Theme.of(context).backgroundColor,
            ),
            fireworkBuilder: () {
              return ShaderMask(
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
                  });
            },
          ),
          InkWell(
            onTap: () {
              Fimber.d("On refresh here");
            },
            child: Container(
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
          ),
          FireworkButton(
            fireworkController: _likeFireworkController,
            onTap: () {
              _cardController.triggerRight();
            },
            size: ScreenUtil().setHeight(50.0),
            circleColor: CircleColor(start: Colors.red, end: Colors.redAccent),
            bubblesColor: BubblesColor(
              dotPrimaryColor: Colors.red,
              dotSecondaryColor: Theme.of(context).primaryColor,
            ),
            fireworkBuilder: () {
              return ShaderMask(
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
                  });
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: StyleAppBar(
        height: ScreenUtil().setHeight(45),
        leading: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsetsDirectional.only(start: 5),
            child: ShaderMask(
                child: Icon(
                  IconFonts.bleeding_hearts,
                  size: ScreenUtil().setHeight(42),
                  color: Colors.redAccent,
                ),
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) {
                  return LinearGradient(
                          colors: [
                        Colors.redAccent,
                        Colors.deepPurpleAccent,
                      ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.repeated)
                      .createShader(bounds);
                }),
          ),
        ),
        title: Text(
          Strings.appName,
          style: Theme.of(context).appBarTheme.textTheme.headline4.copyWith(
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [Colors.redAccent, Theme.of(context).primaryColor],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ).createShader(Rect.fromLTWH(0.0, 0.0, 300.0, 100.0))),
        ),
        actions: [
          IconButton(
              icon: Icon(IconFonts.bell),
              onPressed: () {
                Navigator.of(context).pushNamed('/notification');
              })
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Colors.white, kLowOpacityAccentColor],
          ),
        ),
        child: Stack(
          children: <Widget>[
            animationWidget,
            peopleAvatarWidget,
            controlsWidget,
          ],
        ),
      ),
    );
  }
}
