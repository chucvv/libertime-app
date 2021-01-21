import 'package:moor/moor.dart';

import 'tables/global/table-settings.dart';
import 'tables/user/table-profile.dart';

@UseMoor(tables: [GlobalSetting, Profile])
class LiberDatabase {}
