import 'package:features/modules.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String index = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String chat = '/room_chat';
  static const String personInfo = '/person_info';
  static const String profileEdit = '/profile_edit';
  static const String notification = '/notification';
  static const String filterSettings = '/filter_settings';
  static const String appointment = '/appointment';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case notification:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
      case profileEdit:
        return MaterialPageRoute(builder: (_) => ProfileEditScreen());
      case personInfo:
        return MaterialPageRoute(
            builder: (_) => PersonalInfoScreen(
                  userInfoArgument: settings.arguments,
                ));
      case login:
        return MaterialPageRoute(builder: (_) => AuthContainer());
      case home:
        return MaterialPageRoute(builder: (_) => MainContainer());
      case chat:
        return MaterialPageRoute(
            builder: (_) => RoomChatScreen(
                  roomChatArgument: settings.arguments,
                ));
      case index:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case filterSettings:
        return MaterialPageRoute(builder: (_) => FilterScreen());
      case appointment:
        return MaterialPageRoute(builder: (_) => AppointmentScreen());
      default:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}
