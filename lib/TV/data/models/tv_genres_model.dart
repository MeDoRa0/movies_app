import 'package:movies_ca/TV/domain/entites/tv_genres_entites.dart';

class TvGenresModel extends TvGenresEntites {
  TvGenresModel({
    required super.name,
    required super.id,
  });
  factory TvGenresModel.fromJson(Map<String, dynamic> json) => TvGenresModel(
        name: json['name'],
        id: json['id'],
      );
}
