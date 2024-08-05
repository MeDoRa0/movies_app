import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetTopRatedMoviesUsecase {
  final MovieDomainRepository movieDomainRepository;

  GetTopRatedMoviesUsecase(this.movieDomainRepository);

  Future<List<MoviesDomainEntites>> excuteGetTopRatedMovies() async {
    return await movieDomainRepository.getTopRatedMovies();
  }
}
