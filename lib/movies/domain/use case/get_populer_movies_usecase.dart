import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetPopulerMoviesUseCase {
  final MovieDomainRepository movieDomainRepository;

  GetPopulerMoviesUseCase(this.movieDomainRepository);

  Future<List<MoviesDomainEntites>> excuteGetPopulerMovies() async {
  
    return await movieDomainRepository.getPopuler();
  }
}