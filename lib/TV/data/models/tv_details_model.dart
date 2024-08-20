import 'package:movies_ca/TV/data/models/tv_genres_model.dart';
import 'package:movies_ca/TV/domain/entites/tv_details_domain_entites.dart';

class TvDetailsModel extends TvDetailsDomainEntites {
  const TvDetailsModel({
    required super.name,
    required super.backDropPath,
    required super.overview,
    required super.voteAvrage,
    required super.firtAirDate,
    required super.seasonNumber,
    required super.episodeRunTime,
    required super.genres,
  });

  factory TvDetailsModel.fromJson(Map<String, dynamic> json) => TvDetailsModel(
        name: json['name'],
        backDropPath: json['backdrop_path'],
        overview: json['overview'],
        voteAvrage: json['vote_average'].toDouble(),
        firtAirDate: json['first_air_date'],
        seasonNumber: json['season_number'],
        episodeRunTime: List<int>.from(
          json['episode_run_time'],
        ),
        genres: List<TvGenresModel>.from(
          json['genres'].map(
            (x) => TvGenresModel.fromJson(x),
          ),
        ),
      );
}
