import 'package:get_it/get_it.dart';
import 'package:signin/src/data/datasources/auth_api_service.dart';
import 'package:signin/src/data/repositories/default_auth_repository.dart';
import 'package:signin/src/domain/repositories/auth_repository.dart';
import 'package:signin/src/domain/usecases/login_usecase.dart';
import 'package:signin/src/presentation/bloc//bloc.dart';

Future<void> setup() async {
  GetIt.I.registerFactory<LoginBloc>(() => LoginBloc(GetIt.I()));
  GetIt.I.registerLazySingleton<LoginUseCase>(() => LoginUseCase(GetIt.I()));
  GetIt.I.registerLazySingleton<AuthRepository>(
      () => DefaultAuthRepository(GetIt.I()));
  GetIt.I.registerLazySingleton<AuthService>(() => AuthService.create());
}
