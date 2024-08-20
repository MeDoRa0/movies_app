import 'package:equatable/equatable.dart';

class SimilerMoviesDomainEntites extends Equatable {
  final String? backdropPath;
  final int id;

  const SimilerMoviesDomainEntites(
      {this.backdropPath, required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        id,
      ];
}
