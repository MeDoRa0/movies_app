import 'package:dartz/dartz.dart';
import 'package:movies_ca/TV/domain/entites/tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/repository/tv_domain_repository.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';

class GetOnTheAirUsecase
    extends BaseUseCase<List<TvDomainEntites>, NoParameters> {
  final TvDomainRepository tvDomainRepository;

  GetOnTheAirUsecase(this.tvDomainRepository);

  @override
  Future<Either<Failures, List<TvDomainEntites>>> call(
      NoParameters parameters) async {
    return await tvDomainRepository.getOnTheAirTv();
  }
}
