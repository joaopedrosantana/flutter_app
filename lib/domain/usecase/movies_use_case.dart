import 'package:flutterapp/data/model/response_model.dart';
import 'package:flutterapp/data/model/movies.dart';
import 'package:flutterapp/domain/entity/movies_entity.dart';

abstract class MoviesUseCase {
  Future<ResponseModel> getMovies();
}
