import 'package:equatable/equatable.dart';

class TvDomainEntites extends Equatable {
  final int id;
  final String backDropPath;
  final String name;
  final List<int> genresId;

  TvDomainEntites({
    required this.id,
    required this.backDropPath,
    required this.name,
    required this.genresId,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        backDropPath,
        name,
        genresId,
      ];
}
