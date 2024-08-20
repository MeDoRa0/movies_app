import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';
import 'package:movies_ca/movies/domain/entites/similer_movies_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetSimilerMoviesUsecase extends BaseUseCase<
    List<SimilerMoviesDomainEntites>, SimilerMoviesParameters> {
  final MovieDomainRepository movieDomainRepository;
  GetSimilerMoviesUsecase(this.movieDomainRepository);
  @override
  Future<Either<Failures, List<SimilerMoviesDomainEntites>>> call(
      SimilerMoviesParameters parameters) async {
    return await movieDomainRepository.getsimilerMovies(parameters);
  }
}

class SimilerMoviesParameters extends Equatable {
  final int id;
  const SimilerMoviesParameters(this.id);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
