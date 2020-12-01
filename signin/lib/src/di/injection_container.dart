import 'package:get_it/get_it.dart';
import 'package:signin/src/data/datasources/auth_api_service.dart';
import 'package:signin/src/data/repositories/default_auth_repository.dart';
import 'package:signin/src/domain/repositories/auth_repository.dart';
import 'package:signin/src/domain/usecases/login_usecase.dart';
import 'package:signin/src/presentation/bloc/bloc.dart';

final getIt = GetIt.instance;
Future<void> setup() async {
  getIt.registerLazySingleton<AuthService>(() => AuthService.create());
  getIt.registerLazySingleton<AuthRepository>(
      () => DefaultAuthRepository(getIt()));
  getIt.registerLazySingleton<LoginUseCase>(() => LoginUseCase(getIt()));
  getIt.registerFactory<LoginBloc>(() => LoginBloc(getIt()));
}
