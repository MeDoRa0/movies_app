import 'package:equatable/equatable.dart';

class MoviesDomainEntites extends Equatable {
  final int id;
  final String title;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const MoviesDomainEntites(
      {required this.releaseDate,
        required this.id,
      required this.title,
      required this.backdropPath,
      required this.genreIds,
      required this.overview,
      required this.voteAverage});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        genreIds,
        overview,
       // voteAverage,
        releaseDate,
      ];
}
