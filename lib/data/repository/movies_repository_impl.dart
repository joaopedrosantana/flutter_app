import 'dart:async';

import 'package:flutterapp/core/config/extensions_config.dart';
import 'package:flutterapp/data/model/response_model.dart';
import 'package:flutterapp/data/repository/base_repository.dart';
import 'package:flutterapp/data/source/remote/movies_data_source.dart';
import 'package:flutterapp/domain/entity/movies_entity.dart';
import 'package:flutterapp/domain/repository/movies_repository.dart';

class MoviesRepositoryImpl extends BaseRepository<MoviesDataSource>
    implements MoviesRepository {
  @override
  Future<ResponseModel> getMovies() async {
    var resp = dataSource.getMovies();
    Future<ResponseModel<MoviesEntity>> responseModel;
    await resp.then((value) {
      responseModel = value.format();
    });
    return responseModel;
  }
}
