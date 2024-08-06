import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/exeptions.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/data/data%20source/movies_remote_data_source.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

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
      // TODO
    }
  }

  @override
  
  Future<Either<Failures, List<MoviesDomainEntites>>> getPopulerMovies()  async {
     final result = await baseMovieReomteDataSource.getPopulerMovies();
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }

  @override
  
  Future<Either<Failures, List<MoviesDomainEntites>>> getTopRatedMovies() async {
     final result = await baseMovieReomteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(ServerFailures(failure.errorMessageModel.statusMessage));
      // TODO
    }
  }
}
