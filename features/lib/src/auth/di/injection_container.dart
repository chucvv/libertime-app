import 'package:features/src/auth/data/datasources/auth_api_service.dart';
import 'package:features/src/auth/data/repositories/default_auth_repository.dart';
import 'package:features/src/auth/domain/repositories/auth_repository.dart';
import 'package:features/src/auth/domain/usecases/login_usecase.dart';
import 'package:features/src/auth/presentation/bloc/bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setup() async {
  getIt.registerLazySingleton<AuthService>(AuthService.create);
  getIt.registerLazySingleton<AuthRepository>(
      () => DefaultAuthRepository(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));
}
