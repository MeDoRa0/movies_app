part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  final List<MoviesDomainEntites> nowPlayingMovies;
  final RequestState nowPlayingState;

  final String nowPlayingErrorMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingErrorMessage = '',
  });

  @override
  // TODO: implement props
  List<Object?> get props => [nowPlayingMovies, nowPlayingState, nowPlayingErrorMessage];
}
