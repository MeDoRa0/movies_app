import 'package:movies_ca/movies/data/models/genres_model.dart';
import 'package:movies_ca/movies/domain/entites/mov_details_domain_entites.dart';

class MovieDetailsModel extends MovieDetailsDomainEntites {
  const MovieDetailsModel({
    required super.genres,
    required super.backDropPath,
    required super.title,
    required super.overview,
    required super.voteAverage,
    required super.id,
    required super.releaseDate,
    required super.runtime,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          genres: List<MoviesGenresModel>.from(
            json['genres'].map(
              (x) => MoviesGenresModel.fromJson(x),
            ),
          ),
          releaseDate: json['release_date'],
          id: json['id'],
          title: json['title'],
          backDropPath: json['backdrop_path'],
          overview: json['overview'],
          voteAverage: json['vote_average'].toDouble(),
          runtime: json['runtime']);
}
