import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class MatchCard extends StatefulWidget {
  final String name;
  final String imageURL;
  final int age;
  final String bio;
  final String location;

  MatchCard(this.name, this.imageURL, this.age, this.bio, this.location);

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    final personalInfoWidget = Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setHeight(5.0)),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.6),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.name,
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.black54,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(18.0),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(10.0),
                ),
                Text(
                  widget.age.toString(),
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.black54,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(26.0),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Row(
              children: [
                Icon(
                  IconFonts.suitcase,
                  color: Theme.of(context).iconTheme.color,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5.0),
                ),
                Text(
                  widget.bio,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(16.0),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(3.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: Colors.red.shade300,
                    ),
                    Text(
                      widget.location,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(16.0),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(IconFonts.more_vert),
                    color: Theme.of(context).iconTheme.color,
                    onPressed: () {
                      Navigator.of(context).pushNamed("/person_info");
                    }),
              ],
            ),
          ],
        ),
      ),
    );

    final avatarWidget = Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(0.0, 5.0),
              blurRadius: 15.0)
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: NetworkingImage(
            url: widget.imageURL,
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width - 30.0,
            boxFit: BoxFit.cover),
      ),
    );
    return Stack(
      children: [avatarWidget, personalInfoWidget],
    );
  }
}
