import 'package:equatable/equatable.dart';

class TvGenresEntites extends Equatable {
  final String name;
  final int id;

  TvGenresEntites({
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
