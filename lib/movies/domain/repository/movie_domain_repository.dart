import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/domain/entites/mov_details_domain_entites.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/entites/similer_movies_entites.dart';
import 'package:movies_ca/movies/domain/use%20case/get_movie_details_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';

abstract class MovieDomainRepository {
  Future<Either<Failures, List<MoviesDomainEntites>>> getNowPlayingMovies();

  Future<Either<Failures, List<MoviesDomainEntites>>> getPopulerMovies();

  Future<Either<Failures, List<MoviesDomainEntites>>> getTopRatedMovies();
  Future<Either<Failures, MovieDetailsDomainEntites>> getMovieDetails(
      MovieDetailsParameter parameters);
  Future<Either<Failures, List<SimilerMoviesDomainEntites>>> getsimilerMovies(
      SimilerMoviesParameters parameters);
}
