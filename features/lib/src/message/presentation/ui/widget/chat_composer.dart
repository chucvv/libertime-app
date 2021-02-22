import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

typedef OnTapEmotion = void Function();
typedef OnTapMic = void Function();
typedef OnTapAttachment = void Function();

class ChatComposer extends StatefulWidget {
  final OnTapEmotion onTapEmotion;
  final OnTapMic onTapMic;
  final OnTapAttachment onTapAttachment;

  const ChatComposer(
      {Key key, this.onTapEmotion, this.onTapMic, this.onTapAttachment})
      : super(key: key);

  @override
  _ChatComposerState createState() => _ChatComposerState();
}

class _ChatComposerState extends State<ChatComposer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: ScreenUtil().setHeight(100.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              height: ScreenUtil().setHeight(60.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.emoji_emotions_outlined),
                    color: Colors.grey[500],
                    onPressed: widget.onTapEmotion,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your message ...',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.attach_file),
                    color: Colors.grey[500],
                    onPressed: widget.onTapAttachment,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          InkWell(
            onTap: widget.onTapMic,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: kAccentColorVariant, shape: BoxShape.circle),
              child: Icon(
                Icons.keyboard_voice,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
