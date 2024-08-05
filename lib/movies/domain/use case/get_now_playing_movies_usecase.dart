import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetNowPlayingMoviesUsecase {
  final MovieDomainRepository movieDomainRepository;

  GetNowPlayingMoviesUsecase(this.movieDomainRepository);

  Future<List<MoviesDomainEntites>> excuteGetNowPlayingMovies() async {
  
    return await movieDomainRepository.getNowPlaying();
  }
}
