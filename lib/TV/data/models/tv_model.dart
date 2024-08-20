import 'package:movies_ca/TV/domain/entites/tv_domain_entites.dart';

class TvModel extends TvDomainEntites {
  TvModel({
    required super.id,
    required super.backDropPath,
    required super.name,
    required super.genresId,
  });

  factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
        id: json['id'],
        backDropPath: json['backdrop_path'],
        name: json['name'],
        genresId: List<int>.from(json['genre_ids'].map((e)=>e)),
      );
}
