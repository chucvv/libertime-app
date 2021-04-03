import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ReceivedMessageItem extends StatelessWidget {
  final Map<String, dynamic> message;
  const ReceivedMessageItem({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StyledCacheImage(
                width: ScreenUtil().setWidth(40.0),
                height: ScreenUtil().setHeight(40.0),
                url: message['contactImgUrl'],
                isRound: true,
                defaultWidget: Icon(
                  IconFonts.bleeding_hearts,
                  color: kAccentColor,
                ),
                boxBorder: Border.all(width: 3.0, color: Colors.white),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(.3),
                      offset: Offset(0, 2),
                      blurRadius: 5)
                ],
              ),
              SizedBox(
                width: 6.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(12),
                    )),
                child: Text(
                  "${message['message']}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: kPrimaryColorVariant),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: ScreenUtil().setWidth(50.0),
                ),
                Icon(
                  Icons.done_all,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "${message['time']}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .apply(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
