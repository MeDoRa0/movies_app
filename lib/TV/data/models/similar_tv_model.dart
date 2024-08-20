import 'package:movies_ca/TV/domain/entites/similar_tv_domain_entites.dart';

class SimilarTvModel extends SimilarTvDomainEntites {
  SimilarTvModel({
    super.backDropPath,
    required super.id,
  });
  factory SimilarTvModel.fromJson(Map<String, dynamic> json) => SimilarTvModel(
        id: json['id'],
        backDropPath:
            json['backdrop_path'] ?? '/wyDNiOVWwviCFzWITuxs9CnjmAW.jpg',
      );
}
