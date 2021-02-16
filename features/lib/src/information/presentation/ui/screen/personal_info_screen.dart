import 'package:features/src/home/data/repositories/data.dart';
import 'package:features/src/information/presentation/model/user_info_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_ui.dart';

class PersonalInfoScreen extends StatefulWidget {
  final UserInfoArgument userInfoArgument;

  const PersonalInfoScreen({Key key, @required this.userInfoArgument})
      : super(key: key);

  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final argument = widget.userInfoArgument;
    final person = peoples[int.parse(argument.userId)];
    final infoWidget = ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              person.name,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.redAccent),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(10.0),
            ),
            Text(
              person.age.toString(),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              IconFonts.suitcase,
              color: Colors.grey,
            ),
            SizedBox(
              width: ScreenUtil().setWidth(5.0),
            ),
            Text(
              person.occupation,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              IconFonts.direction_1,
              color: Colors.grey,
            ),
            SizedBox(
              width: ScreenUtil().setWidth(5.0),
            ),
            Text(person.distance, style: Theme.of(context).textTheme.bodyText2),
          ],
        ),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Hero(
                    tag: 'info_${argument.source}_${argument.userId}',
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: NetworkingImage(
                          url: person.imageUrl, boxFit: BoxFit.cover),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    color: Colors.black87,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            infoWidget,
          ],
        ),
      ),
    );
  }
}
