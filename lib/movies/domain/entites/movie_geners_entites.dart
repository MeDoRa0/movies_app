import 'package:equatable/equatable.dart';

class MovieGenresEntites extends Equatable {
  final String name;
  final int id;

  const MovieGenresEntites({
    required this.name,
    required this.id,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
      ];
}
