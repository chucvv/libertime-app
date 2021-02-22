import 'package:features/src/message/data/repositories/data.dart';
import 'package:features/src/message/presentation/ui/widget/all_chat.dart';
import 'package:features/src/message/presentation/ui/widget/history_item.dart';
import 'package:features/src/message/presentation/ui/widget/recent_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class ChatHistoryScreen extends StatefulWidget {
  @override
  _ChatHistoryScreenState createState() => _ChatHistoryScreenState();
}

class _ChatHistoryScreenState extends State<ChatHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[Colors.white, kLowOpacityAccentColor],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            RecentChat(),
            SizedBox(
              height: 10.0,
            ),
            AllChat()
          ],
        ),
      ).topRound(radius: 40.0, background: clBackgroud, border: clBackgroud),
    );
  }
}
