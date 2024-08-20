import 'package:dartz/dartz.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';
import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetNowPlayingMoviesUsecase extends BaseUseCase<List<MoviesDomainEntites>,NoParameters> {
  final MovieDomainRepository movieDomainRepository;

  GetNowPlayingMoviesUsecase(this.movieDomainRepository);

  @override
  Future<Either<Failures, List<MoviesDomainEntites>>> call(NoParameters parameters) async {
    return await movieDomainRepository.getNowPlayingMovies();
  }
}
