class MoviesEntity {
  int page;
  int totalPages;
  List<MoviesItemEntity> results;
  int totalResults;

  MoviesEntity(this.page, this.totalPages, this.results, this.totalResults);
}

class MoviesItemEntity {
  String overview;
  String originalTitle;
  String title;

  MoviesItemEntity(this.overview, this.originalTitle, this.title);
}
