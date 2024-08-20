import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';
import 'package:movies_ca/movies/domain/entites/mov_details_domain_entites.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';

class GetMovieDetailsUsecase
    extends BaseUseCase<MovieDetailsDomainEntites, MovieDetailsParameter> {
  final MovieDomainRepository movieDomainRepository;

  GetMovieDetailsUsecase(this.movieDomainRepository);

  @override
  Future<Either<Failures, MovieDetailsDomainEntites>> call(
      MovieDetailsParameter parameters) async {
    return await movieDomainRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameter extends Equatable {
  final int movieID;

  const MovieDetailsParameter({required this.movieID});

  @override
  // TODO: implement props
  List<Object?> get props => [movieID];
}
