import 'package:features/src/home/data/repositories/data.dart';
import 'package:features/src/profile/presentation/model/user_info_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_ui/awesome_external_widgets.dart';
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
            Expanded(
              child: AutoSizeText(
                person.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kBlueColor),
              ),
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
        SizedBox(
          height: ScreenUtil().setWidth(10.0),
        ),
        Row(
          children: [
            Icon(
              IconFonts.suitcase,
              color: Colors.grey,
              size: ScreenUtil().setWidth(16.0),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(5.0),
            ),
            AutoSizeText(
              person.occupation,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        SizedBox(
          height: ScreenUtil().setWidth(5.0),
        ),
        Row(
          children: [
            Icon(
              IconFonts.direction_1,
              color: Colors.grey,
              size: ScreenUtil().setWidth(16.0),
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
                    tag: 'info_${argument.userId}',
                    child: AspectRatio(
                      aspectRatio: 3 / 4,
                      child: StyledCacheImage(url: person.imageUrl),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    child: CircleButton(
                      icon: FontAwesomeIcons.chevronLeft,
                      iconSize: 18,
                      width: ScreenUtil().setWidth(30.0),
                      height: ScreenUtil().setHeight(30.0),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    padding: EdgeInsets.all(6.0),
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
