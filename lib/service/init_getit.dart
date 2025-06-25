import 'package:u_movieapp/export.dart';
import 'package:u_movieapp/service/api_service.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<ApiService>(() => ApiService());
  getIt.registerLazySingleton<MoviesRepository>(
    () => MoviesRepository(getIt<ApiService>()),
  );
}
