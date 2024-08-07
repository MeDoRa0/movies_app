part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
@override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetNowPlayingMoviesEvent extends MoviesEvent{}
class GetPopulerMoviesEvent extends MoviesEvent{}
class GetTopRatedMoviesEvent extends MoviesEvent{}


