import 'package:features/src/home/data/repositories/data.dart';
import 'package:features/src/message/presentation/ui/model/room_chat_args.dart';
import 'package:features/src/message/presentation/ui/widget/match_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class MatchScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<MatchScreen>
    with AutomaticKeepAliveClientMixin<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Padding(
      padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                IconFonts.heartbeat,
                size: ScreenUtil().setHeight(40.0),
              ),
              SizedBox(width: 40.0),
              Expanded(
                child: Text(
                  '35 People expressed interested in you',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Colors.black54,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0)
                      ],
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(20.0),
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ).centerLinearGradient(
              padding: EdgeInsets.only(
                  left: 50.0, top: 20.0, right: 50.0, bottom: 20.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          SizedBox(
            height: ScreenUtil().setHeight(10.0),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: peoples.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  crossAxisCount: 3,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) {
                  return MatchItem(
                    userInfo: peoples[index],
                    onTap: (userName, imageUrl) {
                      print('you selected $userName');
                      Navigator.pushNamed(context, '/room_chat',
                          arguments: RoomChatArgument(userName, imageUrl));
                    },
                    offset: (index + 1) % 3 == 2 ? 0.7 : 0,
                  );
                }),
          )
        ],
      ),
    ).topRound();
  }

  @override
  bool get wantKeepAlive => true;
}
