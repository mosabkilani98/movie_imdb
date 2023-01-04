class AppConsctance {
  static const baseurl = "https://api.themoviedb.org/3";
  static const String apikey = "01cb26447dcb66cc2e2c1d4dd01c0d4e";
  static const String popularMoviesPath =
      "$baseurl/movie/popular?api_key=$apikey";
  static const String nowPLayingMoviesPath =
      "$baseurl/movie/now_playing?api_key=$apikey";
  static const String topRatedMoviesPath =
      "$baseurl/movie/top_rated?api_key=$apikey";
  static String movieDetailsPath(int movieID) =>
      "$baseurl/movie/$movieID?api_key=$apikey";
  static String recomendationsPath(int movieID) =>
      "$baseurl/movie/$movieID/recommendations?api_key=$apikey";
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500/";
  static String imageUrl(String path) => '$baseImageUrl$path';
}
