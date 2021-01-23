library database;

export 'src/tables/global_database.dart';
export 'src/tables/user_database.dart';

export 'src/unsupported.dart'
    if (dart.library.html) 'src/web_executor.dart'
    if (dart.library.io) 'src/mobile_executor.dart';
