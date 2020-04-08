import 'package:flutterapp/app/viewmodels/base_view_model.dart';
import 'package:flutterapp/data/model/response_model.dart';
import 'package:flutterapp/domain/entity/movies_entity.dart';
import 'package:flutterapp/domain/usecase/movies_use_case.dart';
import 'package:mobx/mobx.dart';

part 'movies_view_model.g.dart';

class MoviesViewModel = _MoviesViewModel with _$MoviesViewModel;

abstract class _MoviesViewModel extends BaseViewModel<MoviesUseCase>
    with Store {
  _MoviesViewModel() {
    init();
  }
  @observable
  ObservableList<MoviesItemEntity> list = <MoviesItemEntity>[].asObservable();

  @action
  init() async {
    await useCase.getMovies().then((movies) {
      if (movies == null) {
        list = <MoviesItemEntity>[].asObservable();
        return;
      }
      if (movies is SuccessResponse) {
        list = movies.value.results.asObservable();
      } else {
        var resp=movies as ErrorResponse;
        list = <MoviesItemEntity>[].asObservable();
        //ERROR
      }
    });
  }
}
