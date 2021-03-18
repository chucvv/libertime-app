import 'package:features/src/profile/presentation/model/user_info_argument.dart';
import 'package:features/src/message/data/repositories/data.dart';
import 'package:features/src/message/presentation/ui/model/room_chat_args.dart';
import 'package:features/src/message/presentation/ui/widget/chat_composer.dart';
import 'package:features/src/message/presentation/ui/widget/received_message_item.dart';
import 'package:features/src/message/presentation/ui/widget/sent_message_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class RoomChatScreen extends StatefulWidget {
  final RoomChatArgument roomChatArgument;

  const RoomChatScreen({Key key, @required this.roomChatArgument})
      : super(key: key);
  @override
  _RoomChatScreenState createState() => _RoomChatScreenState();
}

class _RoomChatScreenState extends State<RoomChatScreen> {
  List<IconData> icons = [
    Icons.image,
    Icons.camera,
    Icons.file_upload,
    Icons.folder,
    Icons.gif
  ];
  bool _showBottom = false;
  @override
  Widget build(BuildContext context) {
    final appBar = StyleAppBar(
      backgroundColor: AppColors.primaryColor[500],
      height: 80.0,
      leading: Transform.translate(
        offset: Offset(15, 0),
        child: CircleButton(
          icon: FontAwesomeIcons.chevronLeft,
          iconSize: 18,
          width: ScreenUtil().setWidth(30.0),
          height: ScreenUtil().setHeight(30.0),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      leadingWidth: ScreenUtil().setWidth(30.0),
      actions: [
        IconButton(
            icon: Icon(IconFonts.calendar_full),
            color: Colors.redAccent,
            onPressed: () {
              Navigator.of(context).pushNamed('/appointment');
            })
      ],
      title: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed("/person_info", arguments: UserInfoArgument('1'));
        },
        child: Row(
          children: [
            StyledCacheImage(
              width: ScreenUtil().setWidth(50.0),
              height: ScreenUtil().setHeight(50.0),
              url: widget.roomChatArgument.imageUrl,
              isRound: true,
              defaultIcon: Icon(
                IconFonts.bleeding_hearts,
                color: kAccentColor,
              ),
              boxBorder: Border.all(
                  width: 3.0, color: kAccentColorVariant.withOpacity(0.8)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    offset: Offset(0, 2),
                    blurRadius: 5)
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  widget.roomChatArgument.userName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .apply(color: Colors.white),
                ),
                Text(
                  'online',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .apply(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    final iconBox = Positioned(
      bottom: 90,
      left: 25,
      right: 25,
      child: Container(
        padding: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5), blurRadius: 15.0, color: Colors.grey)
          ],
        ),
        child: GridView.count(
          mainAxisSpacing: 21.0,
          crossAxisSpacing: 21.0,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(
            icons.length,
            (i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[200],
                  border: Border.all(color: kPrimaryColor, width: 2),
                ),
                child: IconButton(
                  icon: Icon(
                    icons[i],
                    color: kPrimaryColor,
                  ),
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor[500],
      appBar: appBar,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(15),
                    itemCount: messages.length,
                    itemBuilder: (ctx, i) {
                      if (messages[i]['status'] == MessageType.received) {
                        return ReceivedMessageItem(
                          message: messages[i],
                        );
                      } else {
                        return SentMessageItem(
                          message: messages[i],
                        );
                      }
                    },
                  ),
                ),
                ChatComposer(
                  onTapAttachment: () {},
                  onTapEmotion: () {},
                  onTapMic: () {
                    setState(() {
                      _showBottom = true;
                    });
                  },
                )
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showBottom = false;
                });
              },
            ),
          ),
          _showBottom ? iconBox : Container(),
        ],
      ).topRound(),
    );
  }
}
