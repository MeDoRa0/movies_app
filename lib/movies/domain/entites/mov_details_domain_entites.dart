import 'package:equatable/equatable.dart';
import 'package:movies_ca/movies/domain/entites/movie_geners_entites.dart';

class MovieDetailsDomainEntites extends Equatable {
  final String backDropPath;
  final String title;
  final String overview;
  final double voteAverage;
  final int id;
  final String releaseDate;
  final int runtime;
  final List<MovieGenresEntites> genres;

  const MovieDetailsDomainEntites({
    required this.genres,
    required this.backDropPath,
    required this.title,
    required this.overview,
    required this.voteAverage,
    required this.id,
    required this.releaseDate,
    required this.runtime,
  });

  @override
  List<Object?> get props => [
        backDropPath,
        title,
        overview,
        voteAverage,
        id,
        releaseDate,
        genres,
        runtime,
      ];
}
