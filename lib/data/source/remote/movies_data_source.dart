import 'package:dio/dio.dart';
import 'package:flutterapp/data/model/response_model.dart';
import 'package:flutterapp/data/model/movies.dart';

abstract class MoviesDataSource {
  Future<Response> getMovies();
}
