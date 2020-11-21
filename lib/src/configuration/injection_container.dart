import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:login/login.dart';

import '../../core/network/network_info.dart';

void setupLoginComponent() {
  GetIt.I.registerLazySingleton(() => LoginBloc(GetIt.I()));
  GetIt.I.registerLazySingleton(() => LoginUseCase(GetIt.I()));
  GetIt.I.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(GetIt.I()));
  GetIt.I.registerLazySingleton<UserRemoveDataSource>(
      () => UserRemoveDataSourceImpl(Firestore.instance.collection("user")));
}

Future<void> setup() async {
  GetIt.I.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(GetIt.I()));

  GetIt.I.registerLazySingleton(() => const FlutterSecureStorage());
  GetIt.I.registerLazySingleton(() => http.Client());
  GetIt.I.registerLazySingleton(() => DataConnectionChecker());
}
