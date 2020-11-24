import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import '../../core/network/network_info.dart';

Future<void> setup() async {
  GetIt.I.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(GetIt.I()));

  GetIt.I.registerLazySingleton(() => const FlutterSecureStorage());
  GetIt.I.registerLazySingleton(() => http.Client());
  GetIt.I.registerLazySingleton(() => DataConnectionChecker());
}
