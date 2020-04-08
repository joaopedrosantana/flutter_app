import 'package:json_annotation/json_annotation.dart';

part 'movies.g.dart';

@JsonSerializable()
class Movies {
  int page;
  int totalPages;
  List<MoviesItemResponse> results;
  int totalResults;

  Movies({this.page, this.totalPages, this.results, this.totalResults});

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

@JsonSerializable()
class MoviesItemResponse {
  String overview;
  String originalTitle;
  String title;

  MoviesItemResponse({this.overview, this.originalTitle, this.title});

  factory MoviesItemResponse.fromJson(Map<String, dynamic> json) =>
      _$MoviesItemResponseFromJson(json);
}
