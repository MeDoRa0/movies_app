import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/utils/enums.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/use%20case/get_now_playing_movies_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_populer_movies_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_top_rated_movies_usecase.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUsecase getNowPlayingUseCase;
  final GetPopulerMoviesUseCase getPopulerMoviesUseCase;
  final GetTopRatedMoviesUsecase getTopRatedMoviesUsecase;
  MoviesBloc(
    this.getNowPlayingUseCase,
    this.getPopulerMoviesUseCase,
    this.getTopRatedMoviesUsecase,
  ) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetPopulerMoviesEvent>(_getPopulerMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingUseCase.excuteGetNowPlayingMovies();

    result.fold(
      (l) => emit(state.copyWithMoviesState(
          nowPlayingState: RequestState.error,
          nowPlayingMovieErrorMessage: l.message)),
      (r) => emit(state.copyWithMoviesState(
          nowPlayingMovies: r, nowPlayingState: RequestState.success)),
    );
  }

  FutureOr<void> _getPopulerMovies(
      GetPopulerMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopulerMoviesUseCase.excuteGetPopulerMovies();

    result.fold(
      (l) => emit(state.copyWithMoviesState(
          populerMoviesState: RequestState.error,
          populerMoviesErrorMessage: l.message)),
      (r) => emit(state.copyWithMoviesState(
          populerMovies: r, populerMoviesState: RequestState.success)),
    );
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUsecase.excuteGetTopRatedMovies();

    result.fold(
      (l) => emit(state.copyWithMoviesState(
          topRatedMoviesState: RequestState.error,
          topRatedMoviesErrorMessage: l.message)),
      (r) => emit(state.copyWithMoviesState(
          topRatedMovies: r, topRatedMoviesState: RequestState.success)),
    );
  }
}
