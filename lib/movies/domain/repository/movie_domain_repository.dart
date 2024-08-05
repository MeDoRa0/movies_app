import 'package:movies_ca/movies/domain/entites/movies_domain_entites.dart';

abstract class MovieDomainRepository {
  Future<List<MoviesDomainEntites>> getNowPlaying();
  Future<List<MoviesDomainEntites>> getPopuler();
  Future<List<MoviesDomainEntites>> getTopRatedMovies();
}



