import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';

class ChatCircleAvatar extends StatelessWidget {
  final String imgUrl;
  const ChatCircleAvatar({
    Key key,
    @required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageSizeMedium,
      height: imageSizeMedium,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: Offset(0, 2),
              blurRadius: 5)
        ],
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage('$imgUrl'),
      ),
    );
  }
}
