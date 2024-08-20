import 'package:movies_ca/movies/domain/entites/movie_geners_entites.dart';

class MoviesGenresModel extends MovieGenresEntites {
  const MoviesGenresModel({
    required super.name,
    required super.id,
  });

  factory MoviesGenresModel.fromJson(Map<String, dynamic> json) =>
      MoviesGenresModel(
        id: json['id'],
        name: json['name'],
      );
}
