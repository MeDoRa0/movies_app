import 'package:equatable/equatable.dart';

class SimilarTvDomainEntites extends Equatable {
  final String? backDropPath;
  final int id;

  const SimilarTvDomainEntites({
    this.backDropPath,
    required this.id,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [
        backDropPath,
        id,
      ];
}
