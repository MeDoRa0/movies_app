import 'package:dartz/dartz.dart';
import 'package:movies_ca/TV/domain/entites/similar_tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/entites/tv_details_domain_entites.dart';
import 'package:movies_ca/TV/domain/entites/tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/use%20case/get_similar_tv_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_tv_details_usecase.dart';
import 'package:movies_ca/core/error/failuers.dart';

abstract class TvDomainRepository {
  Future<Either<Failures, List<TvDomainEntites>>> getOnTheAirTv();
  Future<Either<Failures, List<TvDomainEntites>>> getPopulerTv();
  Future<Either<Failures, List<TvDomainEntites>>> getTopRatedTv();
  Future<Either<Failures, TvDetailsDomainEntites>> getTvDetails(
      TvDetailsParameter parameters);
  Future<Either<Failures, List<SimilarTvDomainEntites>>> getSimilarTv(
      SimilerTvParameters parameters);
}
