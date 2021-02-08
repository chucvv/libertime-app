import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class MatchCard extends StatefulWidget {
  final String name;
  final String imageURL;
  final int age;
  final String bio;

  const MatchCard(this.name, this.imageURL, this.age, this.bio);

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
        BoxShadow(
            color: Colors.grey.shade700,
            offset: Offset(0.0, 5.0),
            blurRadius: 20.0)
      ]),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade700,
                    offset: Offset(0.0, 5.0),
                    blurRadius: 15.0)
              ],
              borderRadius: BorderRadius.circular(100.0),
            ),
            height: MediaQuery.of(context).size.height * 0.74,
            width: MediaQuery.of(context).size.width - 10.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:
                  Image(fit: BoxFit.cover, image: AssetImage(widget.imageURL)),
            ),
          ),
          Positioned(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.black54,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 10.0)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(40.0),
                    ),
                    Text(
                      widget.age.toString(),
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.black54,
                              offset: Offset(1.0, 2.0),
                              blurRadius: 10.0)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10.0),
                ),
                Text(
                  widget.bio,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                          color: Colors.black54,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 10.0)
                    ],
                  ),
                ),
              ],
            ),
            bottom: ScreenUtil().setHeight(40),
            left: ScreenUtil().setWidth(40),
          ),
        ],
      ),
    );
  }
}
