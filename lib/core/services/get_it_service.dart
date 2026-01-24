import 'package:book_app/core/services/api_service.dart';
import 'package:book_app/data/dataSources/home_local_storage/home_local_data_source_impl.dart';
import 'package:book_app/data/dataSources/home_remote_storage/home_remote_data_source_impl.dart';
import 'package:book_app/data/repos/HomeRepoImpl.dart';
import 'package:book_app/domin/use_cases/fetchBooksUseCase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(
    dio: getIt<Dio>(),
  ));
  getIt.registerSingleton<HomeLocalDataSourceImpl>(HomeLocalDataSourceImpl());
  getIt.registerSingleton<HomeRemoteDataSourceImpl>(HomeRemoteDataSourceImpl(
    apiService: getIt<ApiService>(),
  ));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    remoteDataSource: getIt<HomeRemoteDataSourceImpl>(),
    localDataSource: getIt<HomeLocalDataSourceImpl>(),
  ));
  getIt.registerSingleton<FetchBooksUseCase>(FetchBooksUseCase(
    homeRepoImpl: getIt<HomeRepoImpl>(),
  ));

  getIt.registerSingleton<FetchApiBooksUseCase>(FetchApiBooksUseCase(
    homeRepoImpl: getIt<HomeRepoImpl>(),
  ));

  getIt.registerSingleton<FetchApiBooksByCategoryUseCase>(
      FetchApiBooksByCategoryUseCase(
    homeRepoImpl: getIt<HomeRepoImpl>(),
  ));
}
