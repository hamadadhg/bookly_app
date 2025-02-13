/*
import 'package:bookly_app/core/services/api_services.dart';
import 'package:bookly_app/features/mvvm/home/data/repositories/home_repository_implementation.dart';
import 'package:bookly_app/features/mvvm/search/data/repositories/search_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepositoryImplementation>(
    HomeRepositoryImplementation(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
  getIt.registerSingleton<SearchRepositoryImplementation>(
    SearchRepositoryImplementation(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
}
*/
