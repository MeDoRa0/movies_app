import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/core/utils/enums.dart';
import 'package:movies_ca/movies/domain/entites/mov_details_domain_entites.dart';
import 'package:movies_ca/movies/domain/entites/similer_movies_entites.dart';
import 'package:movies_ca/movies/domain/use%20case/get_movie_details_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUsecase, this.getSimilerMoviesUsecase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetSimilarMoviesEvent>(_getSimilarMovies);
  }
  final GetMovieDetailsUsecase getMovieDetailsUsecase;
  final GetSimilerMoviesUsecase getSimilerMoviesUsecase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUsecase(MovieDetailsParameter(movieID: event.id));
    result.fold(
      (l) => emit(state.copyWithMovieDetailsState(
          movieDetailsState: RequestState.error,
          movieDetailsErrorMessage: l.message)),
      (r) => emit(state.copyWithMovieDetailsState(
          movieDetails: r, movieDetailsState: RequestState.success)),
    );
  }

  FutureOr<void> _getSimilarMovies(
      GetSimilarMoviesEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getSimilerMoviesUsecase(SimilerMoviesParameters(event.id));
    result.fold(
      (l) => emit(state.copyWithMovieDetailsState(
          similarMoviesState: RequestState.error,
          similarMoviesErrorMessage: l.message)),
      (r) => emit(state.copyWithMovieDetailsState(
          similarMovies: r, similarMoviesState: RequestState.success)),
    );
  }
}
