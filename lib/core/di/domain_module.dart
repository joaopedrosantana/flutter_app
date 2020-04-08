import 'package:flutterapp/data/source/remote/movies_data_source_impl.dart';
import 'package:flutterapp/domain/usecase/movies_use_case.dart';
import 'package:flutterapp/domain/usecase/movies_use_case_impl.dart';

import 'app_module.dart';

class DomainModule {
  DomainModule() {
    //UseCase
    getIt.registerFactory<MoviesUseCase>(() => MoviesUseCaseImpl());
  }
}
