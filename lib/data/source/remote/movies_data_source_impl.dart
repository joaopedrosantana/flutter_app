import 'package:dio/dio.dart';
import 'package:flutterapp/data/model/movies.dart';
import 'package:flutterapp/data/source/remote/base_data_source.dart';
import 'package:flutterapp/data/source/remote/movies_data_source.dart';
import 'package:flutterapp/data/source/remote/services/movies_service.dart';

class MoviesDataSourceImpl extends BaseDataSource<MoviesService>
    implements MoviesDataSource {
  @override
  Future<Response> getMovies() {
    return service.getMovies();
  }
}
