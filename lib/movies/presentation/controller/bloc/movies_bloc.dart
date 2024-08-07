import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/utils/enums.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(MoviesInitial()) {
    on<MoviesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
