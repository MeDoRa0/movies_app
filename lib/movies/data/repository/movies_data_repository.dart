import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/exeptions.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/data/data%20source/movies_remote_data_source.dart';
import 'package:movies_ca/movies/domain/entites/mov_details_domain_entites.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/entites/similer_movies_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';
import 'package:movies_ca/movies/domain/use%20case/get_movie_details_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';

class MoviesDataRepository extends MovieDomainRepository {
  final BaseMovieReomteDataSource baseMovieReomteDataSource;

  MoviesDataRepository({required this.baseMovieReomteDataSource});

  @override
  Future<Either<Failures, List<MoviesDomainEntites>>>
      getNowPlayingMovies() async {
    final result = await baseMovieReomteDataSource.getNowPlayingMoveis();
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failures, List<MoviesDomainEntites>>> getPopulerMovies() async {
    final result = await baseMovieReomteDataSource.getPopulerMovies();
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }

  @override
  Future<Either<Failures, List<MoviesDomainEntites>>>
      getTopRatedMovies() async {
    final result = await baseMovieReomteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }

  @override
  Future<Either<Failures, MovieDetailsDomainEntites>> getMovieDetails(
      MovieDetailsParameter parameters) async {
    final result = await baseMovieReomteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }

  @override
  Future<Either<Failures, List<SimilerMoviesDomainEntites>>> getsimilerMovies(
      SimilerMoviesParameters parameters) async {
    final result = await baseMovieReomteDataSource.getSimilerMovies(parameters);
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }
}
