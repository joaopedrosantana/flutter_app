// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return Movies(
    page: json['page'] as int,
    totalPages: json['totalPages'] as int,
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : MoviesItemResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalResults: json['totalResults'] as int,
  );
}

Map<String, dynamic> _$MoviesToJson(Movies instance) => <String, dynamic>{
      'page': instance.page,
      'totalPages': instance.totalPages,
      'results': instance.results,
      'totalResults': instance.totalResults,
    };

MoviesItemResponse _$MoviesItemResponseFromJson(Map<String, dynamic> json) {
  return MoviesItemResponse(
    overview: json['overview'] as String,
    originalTitle: json['originalTitle'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$MoviesItemResponseToJson(MoviesItemResponse instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'originalTitle': instance.originalTitle,
      'title': instance.title,
    };
