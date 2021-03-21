import 'package:platform_device_id/platform_device_id.dart';

Future<String> getDeviceId() => PlatformDeviceId.getDeviceId.catchError((err) {
      throw err;
    });
