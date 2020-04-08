import 'package:flutterapp/data/mappers/mapper.dart';
import 'package:flutterapp/data/model/movies.dart';
import 'package:flutterapp/domain/entity/movies_entity.dart';

class MoviesToMoviesEntity extends Mapper<Movies, MoviesEntity> {
  @override
  MoviesEntity transform(Movies item) {
    return MoviesEntity(
        item.page,
        item.totalPages,
        item.results.map((element) => MoviesItemResponseToMoviesItemEntity().transform(element)).toList(),
        item.totalResults);
  }
}

class MoviesItemResponseToMoviesItemEntity
    extends Mapper<MoviesItemResponse, MoviesItemEntity> {
  @override
  MoviesItemEntity transform(MoviesItemResponse item) {
    return MoviesItemEntity(item.overview, item.originalTitle, item.title);
  }
}
