import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/TV/domain/entites/similar_tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/repository/tv_domain_repository.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';

class GetSimilarTvUsecase
    extends BaseUseCase<List<SimilarTvDomainEntites>, SimilerTvParameters> {
  final TvDomainRepository tvDomainRepository;

  GetSimilarTvUsecase(this.tvDomainRepository);
  @override
  Future<Either<Failures, List<SimilarTvDomainEntites>>> call(
      SimilerTvParameters parameters) async {
    return await tvDomainRepository.getSimilarTv(parameters);
  }
}

class SimilerTvParameters extends Equatable {
  final int id;
  const SimilerTvParameters(this.id);
  
  @override
  // TODO: implement props
  List<Object?> get props => [id];

 
}
