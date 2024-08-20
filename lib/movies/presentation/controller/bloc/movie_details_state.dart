part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  const MovieDetailsState({
    this.similarMovies = const [],
    this.similarMoviesState = RequestState.loading,
    this.similarMoviesErrorMessage = '',
    this.movieDetails,
    this.movieDetailsState = RequestState.loading,
    this.movieDetailsErrorMessage = '',
  });

  final MovieDetailsDomainEntites? movieDetails;
  final RequestState movieDetailsState;
  final String movieDetailsErrorMessage;
  final List<SimilerMoviesDomainEntites> similarMovies;
  final RequestState similarMoviesState;
  final String similarMoviesErrorMessage;
  MovieDetailsState copyWithMovieDetailsState({
    MovieDetailsDomainEntites? movieDetails,
    RequestState? movieDetailsState,
    String? movieDetailsErrorMessage,
    List<SimilerMoviesDomainEntites>? similarMovies,
    RequestState? similarMoviesState,
    String? similarMoviesErrorMessage,
  }) {
    return MovieDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      movieDetailsErrorMessage:
          movieDetailsErrorMessage ?? this.movieDetailsErrorMessage,
      similarMovies: similarMovies ?? this.similarMovies,
      similarMoviesState: similarMoviesState ?? this.similarMoviesState,
      similarMoviesErrorMessage:
          similarMoviesErrorMessage ?? this.similarMoviesErrorMessage,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        movieDetails,
        movieDetailsState,
        movieDetailsErrorMessage,
        similarMovies,
        similarMoviesState,
        similarMoviesErrorMessage,
      ];
}
