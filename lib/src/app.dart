import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:share_ui/awesome_ui.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'app_router.dart';
import 'strings.dart';

class LiberMeApp extends StatelessWidget {
  Future<void> _initializeFlutterFire() async {
    // Firebase
    await Firebase.initializeApp();
    // Crashlytics
    await FirebaseCrashlytics.instance
        .setCrashlyticsCollectionEnabled(!kIsWeb && !kReleaseMode);

    Function originalOnError = FlutterError.onError;
    FlutterError.onError = (errorDetails) async {
      await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      originalOnError(errorDetails);
    };
  }

  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design)
    //If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    final mainApp = ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () => MaterialApp(
        title: Strings.appName,
        theme: theme,
        onGenerateRoute: AppRouter.generateRoutes,
        debugShowCheckedModeBanner: false,
      ),
    );
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initializeFlutterFire(),
      builder: (context, snapshot) {
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return mainApp;
        }
        // Check for errors
        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text(snapshot.error),
              ),
            ),
          );
        }

        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: Text('Loading...'),
            ),
          ),
        );
      },
    );
  }
}
