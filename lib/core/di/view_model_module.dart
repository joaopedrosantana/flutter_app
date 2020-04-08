import 'package:flutterapp/app/viewmodels/movies_view_model.dart';
import 'package:flutterapp/core/di/app_module.dart';

class ViewModelModule {
  ViewModelModule() {
    getIt.registerLazySingleton<MoviesViewModel>(() => MoviesViewModel());
  }
}
