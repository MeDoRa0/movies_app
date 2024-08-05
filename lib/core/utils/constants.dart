class AppConstants {
  static const String apiKey = 'api_key=6c42491156669392645fce4736b2e8d9';
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String nowPlayingPath = '$baseUrl/movie/now_playing?$apiKey';
  static const String populerMoviesPath = '$baseUrl/movie/popular?$apiKey';
   static const String topRatedMoviesPath = '$baseUrl/movie/top_rated?$apiKey';
  
}
