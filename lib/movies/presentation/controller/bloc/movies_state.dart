part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  final List<MoviesDomainEntites> nowPlayingMovies;
  final RequestState nowPlayingMoviesState;

  final String nowPlayingMovieErrorMessage;

  final List<MoviesDomainEntites> populerMovies;
  final RequestState populerMoviesState;

  final String populerMoviesErrorMessage;

  final List<MoviesDomainEntites> topRatedMovies;
  final RequestState topRatedMoviesState;

  final String topRatedMoviesErrorMessage;

  const MoviesState({
    this.topRatedMovies = const [],
    this.topRatedMoviesState = RequestState.loading,
    this.topRatedMoviesErrorMessage = '',
    this.populerMovies = const [],
    this.populerMoviesState = RequestState.loading,
    this.populerMoviesErrorMessage = '',
    this.nowPlayingMovies = const [],
    this.nowPlayingMoviesState = RequestState.loading,
    this.nowPlayingMovieErrorMessage = '',
  });

  MoviesState copyWithMoviesState({
    List<MoviesDomainEntites>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMovieErrorMessage,
    List<MoviesDomainEntites>? populerMovies,
    RequestState? populerMoviesState,
    String? populerMoviesErrorMessage,
    List<MoviesDomainEntites>? topRatedMovies,
    RequestState? topRatedMoviesState,
    String? topRatedMoviesErrorMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMoviesState: nowPlayingState ?? this.nowPlayingMoviesState,
      nowPlayingMovieErrorMessage:
          nowPlayingMovieErrorMessage ?? this.nowPlayingMovieErrorMessage,
      populerMovies: populerMovies ?? this.populerMovies,
      populerMoviesState: populerMoviesState ?? this.populerMoviesState,
      populerMoviesErrorMessage:
          populerMoviesErrorMessage ?? this.populerMoviesErrorMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMoviesState: topRatedMoviesState ?? this.topRatedMoviesState,
      topRatedMoviesErrorMessage:
          topRatedMoviesErrorMessage ?? this.topRatedMoviesErrorMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingMoviesState,
        nowPlayingMovieErrorMessage,
        populerMovies,
        populerMoviesState,
        populerMoviesErrorMessage,
        topRatedMovies,
        topRatedMoviesState,
        topRatedMoviesErrorMessage,
      ];
}
