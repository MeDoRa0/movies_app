import 'package:movies_ca/movies/domain/entites/similer_movies_entites.dart';

class SimilerMoviesModel extends SimilerMoviesDomainEntites {
  const SimilerMoviesModel({
   super.backdropPath,
    required super.id,
  });
  factory SimilerMoviesModel.fromJson(Map<String, dynamic> json) =>
      SimilerMoviesModel(
        backdropPath: json['backdrop_path']??'/wyDNiOVWwviCFzWITuxs9CnjmAW.jpg',
        id: json['id'],
      );
}
