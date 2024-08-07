import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/utils/enums.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/use%20case/get_now_playing_movies_usecase.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUsecase getNowPlayingUseCase;
  MoviesBloc(this.getNowPlayingUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingUseCase.excuteGetNowPlayingMovies();
      emit(const MoviesState(nowPlayingState: RequestState.success));

      result.fold(
          (l) => emit(MoviesState(
              nowPlayingState: RequestState.error,
              nowPlayingErrorMessage: l.message)),
          (r) => emit(MoviesState(
              nowPlayingMovies: r, nowPlayingState: RequestState.success)));
    });
  }
}
