import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';

abstract class MovieDomainRepository {
  Future<Either<Failures, List<MoviesDomainEntites>>> getNowPlayingMovies();

  Future<Either<Failures, List<MoviesDomainEntites>>> getPopulerMovies();

  Future<Either<Failures, List<MoviesDomainEntites>>> getTopRatedMovies();
}
