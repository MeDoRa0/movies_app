import 'package:equatable/equatable.dart';
import 'package:movies_ca/TV/domain/entites/tv_genres_entites.dart';

class TvDetailsDomainEntites extends Equatable {
  final String name;
  final String backDropPath;
  final String overview;
  final double voteAvrage;
  final String firtAirDate;
  final String seasonNumber;
  final List<int> episodeRunTime;
  final List<TvGenresEntites> genres;

  const TvDetailsDomainEntites({
    required this.name,
    required this.backDropPath,
    required this.overview,
    required this.voteAvrage,
    required this.firtAirDate,
    required this.seasonNumber,
    required this.episodeRunTime,
    required this.genres,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        backDropPath,
        overview,
        voteAvrage,
        firtAirDate,
        seasonNumber,
        episodeRunTime,
        genres,
      ];
}
