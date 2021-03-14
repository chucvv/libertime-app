import 'package:features/src/setting/presentation/ui/widget/profile_header.dart';
import 'package:features/src/setting/presentation/ui/widget/profile_item.dart';
import 'package:features/src/top_module_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_ui/awesome_external_widgets.dart';
import 'package:share_ui/awesome_ui.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding:
            EdgeInsets.only(top: 48.0, left: 12.0, right: 12.0, bottom: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HookBuilder(builder: (context) {
              final user = useProvider(
                  userNotifierProvider.select((value) => value.user));
              return ProfileHeader(
                userName: user?.displayName ?? "",
                imageUrl: user?.picture ?? "",
              );
            }),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ProfileItem(
                    headerIcon: IconFonts.filter,
                    headerText: 'Filter',
                    trailIcon: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.8),
                  ),
                  ProfileItem(
                    headerIcon: FontAwesomeIcons.lockOpen,
                    headerText: 'Security',
                    trailIcon: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.8),
                  ),
                  ProfileItem(
                    headerIcon: Icons.notifications,
                    headerText: 'Notification',
                    trailIcon: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.8),
                  ),
                  ProfileItem(
                    headerIcon: IconFonts.language,
                    headerText: 'Language',
                    trailIcon: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.8),
                  ),
                  ProfileItem(
                    headerIcon: FontAwesomeIcons.phoneSquareAlt,
                    headerText: 'Support',
                    trailIcon: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  Divider(
                    height: .5,
                    color: Colors.grey.withOpacity(.8),
                  )
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    _logOut(context);
                  },
                  child: Text(
                    'Logout',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(
                  height: .5,
                  color: Colors.grey.withOpacity(.8),
                ),
                SizedBox(
                  height: 12.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Delete Account',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .apply(color: kOceanColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _logOut(BuildContext context) async {
    await FacebookAuth.instance.logOut();
    Navigator.popAndPushNamed(context, '/login');
  }
}
