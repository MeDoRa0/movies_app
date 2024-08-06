import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetNowPlayingMoviesUsecase {
  final MovieDomainRepository movieDomainRepository;

  GetNowPlayingMoviesUsecase(this.movieDomainRepository);

  Future<Either<Failures, List<MoviesDomainEntites>>> excuteGetNowPlayingMovies() async {
    return await movieDomainRepository.getNowPlayingMovies();
  }
}
