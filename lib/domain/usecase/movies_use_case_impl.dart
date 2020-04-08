import 'package:flutterapp/data/model/response_model.dart';
import 'package:flutterapp/data/model/movies.dart';
import 'package:flutterapp/domain/entity/movies_entity.dart';
import 'package:flutterapp/domain/repository/movies_repository.dart';
import 'package:flutterapp/domain/usecase/base_use_case.dart';
import 'package:flutterapp/domain/usecase/movies_use_case.dart';

class MoviesUseCaseImpl extends BaseUseCase<MoviesRepository>
    implements MoviesUseCase {
  @override
  Future<ResponseModel> getMovies() {
    return repository.getMovies();
  }
}
