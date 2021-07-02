class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList) {
    for (final item in jsonList) {
      final pelicula = Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
} // End Class

class Pelicula {
  bool adult = false;
  bool video = false;
  double popularity = 0.0;
  double voteAverage = 0.0;
  int id = 0;
  int voteCount = 0;
  List<int> genreIds = [];
  String? backdropPath;
  String originalLanguage = '';
  String originalTitle = '';
  String overview = '';
  String? posterPath;
  String releaseDate = '';
  String title = '';

  Pelicula({
    required this.voteCount,
    required this.id,
    required this.video,
    required this.voteAverage,
    required this.title,
    required this.popularity,
    required this.posterPath,
    required this.originalLanguage,
    required this.originalTitle,
    required this.genreIds,
    required this.backdropPath,
    required this.adult,
    required this.overview,
    required this.releaseDate,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    voteCount = json['vote_count'];
    id = json['id'];
    video = json['video'];
    voteAverage = json['vote_average'] / 1;
    title = json['title'];
    popularity = json['popularity'] / 1;
    posterPath = json['poster_path'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://upload.wikimedia.org/Placeholder.svg.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {

    if ( backdropPath == null){
      return 'https://upload.wikimedia.org/Placeholder.svg.png';

    } else {

      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }

  }
} // End Class
