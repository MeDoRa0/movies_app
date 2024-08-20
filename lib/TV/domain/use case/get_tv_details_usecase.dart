import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/TV/domain/entites/tv_details_domain_entites.dart';
import 'package:movies_ca/TV/domain/repository/tv_domain_repository.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';

class GetTvDetailsUsecase
    extends BaseUseCase<TvDetailsDomainEntites, TvDetailsParameter> {
  final TvDomainRepository tvDomainRepository;

  GetTvDetailsUsecase(this.tvDomainRepository);

  @override
  Future<Either<Failures, TvDetailsDomainEntites>> call(
      TvDetailsParameter parameters) async {
    return await tvDomainRepository.getTvDetails(parameters);
  }
}

class TvDetailsParameter extends Equatable {
  final int tvID;

  const TvDetailsParameter({required this.tvID});

  @override
  // TODO: implement props
  List<Object?> get props => [tvID];
}
