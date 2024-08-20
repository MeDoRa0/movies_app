class AppConstants {
  static const String apiKey = 'api_key=6c42491156669392645fce4736b2e8d9';
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String nowPlayingPath = '$baseUrl/movie/now_playing?$apiKey';
  static const String populerMoviesPath = '$baseUrl/movie/popular?$apiKey';
  static const String topRatedMoviesPath = '$baseUrl/movie/top_rated?$apiKey';
//this code for the image of the movie
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl(String path) => '$baseImageUrl$path';

  static String movieDetailsPath(int movieId) =>
      '$baseUrl/movie/$movieId?$apiKey';

  static String similarMoviesPath(int movieId) =>
      '$baseUrl/movie/$movieId/similar?$apiKey';

  static const String onTheAirTvPath = '$baseUrl/tv/on_the_air?$apiKey';
  static const String populerTvPath = '$baseUrl/tv/popular?$apiKey';
  static const String topRatedTvPath = '$baseUrl/tv/top_rated?$apiKey';

  static String tvDetailsPath(int seriesId) => '$baseUrl/tv/$seriesId?$apiKey';
  static String similarTvPath(int seriesId) =>
      '$baseUrl/tv/$seriesId/similar?$apiKey';
}
