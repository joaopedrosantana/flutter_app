import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:flutterapp/core/config/connection.dart';
import 'package:flutterapp/core/config/endpoints.dart';
import 'package:flutterapp/core/config/http.dart';
import 'package:flutterapp/data/model/movies.dart';
import 'package:flutterapp/data/source/remote/services/movies_service.dart';
import 'package:flutterapp/data/util/constants.dart';

class MoviesServiceImpl implements MoviesService {
  @override
  Future<Response> getMovies() async {
    var connection = Connection(Endpoints.LIST_MOVIES);
    connection.addQuery("api_key", Constants.API_KEY);
    connection.setMethod(EnumMethod.GET);
    return connection.execute();
  }
}
