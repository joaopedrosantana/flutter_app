import 'package:flutterapp/core/config/http.dart';
import 'package:flutterapp/data/repository/movies_repository_impl.dart';
import 'package:flutterapp/data/source/remote/movies_data_source.dart';
import 'package:flutterapp/data/source/remote/movies_data_source_impl.dart';
import 'package:flutterapp/data/source/remote/services/movies_service.dart';
import 'package:flutterapp/data/source/remote/services/movies_service_impl.dart';
import 'package:flutterapp/domain/repository/movies_repository.dart';

import 'app_module.dart';

class DataModule {
  DataModule() {
    getIt.registerFactory<HttpClientConfig>(() => HttpClientConfig());

    //DataSources
    getIt.registerLazySingleton<MoviesDataSource>(() => MoviesDataSourceImpl());

    //Services
    getIt.registerLazySingleton<MoviesService>(() => MoviesServiceImpl());

    //Repository
    getIt.registerLazySingleton<MoviesRepository>(() => MoviesRepositoryImpl());
  }
}
