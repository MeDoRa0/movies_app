import 'package:dartz/dartz.dart';
import 'package:movies_ca/TV/data/data%20source/tv_remote_data_source.dart';
import 'package:movies_ca/TV/domain/entites/similar_tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/entites/tv_details_domain_entites.dart';
import 'package:movies_ca/TV/domain/entites/tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/repository/tv_domain_repository.dart';
import 'package:movies_ca/TV/domain/use%20case/get_similar_tv_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_tv_details_usecase.dart';
import 'package:movies_ca/core/error/exeptions.dart';
import 'package:movies_ca/core/error/failuers.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';

class TvDataRepository extends TvDomainRepository {
  final BaseTvRemoteDataSource baseTvRemoteDataSource;

  TvDataRepository({required this.baseTvRemoteDataSource});
  @override
  Future<Either<Failures, List<TvDomainEntites>>> getOnTheAirTv() async {
    final result = await baseTvRemoteDataSource.getOnTheAirTv();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return Left(
        ServerFailures(failure.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failures, List<TvDomainEntites>>> getPopulerTv() async {
    final result = await baseTvRemoteDataSource.getPopulerTV();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return Left(
        ServerFailures(failure.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failures, List<TvDomainEntites>>> getTopRatedTv() async {
    final result = await baseTvRemoteDataSource.getTopRatedTV();
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return Left(
        ServerFailures(failure.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failures, TvDetailsDomainEntites>> getTvDetails(
      TvDetailsParameter parameters) async {
    final result = await baseTvRemoteDataSource.getTvDetails(parameters);
    try {
      return right(result);
    } on ServerExeption catch (failure) {
      return Left(
        ServerFailures(failure.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failures, List<SimilarTvDomainEntites>>> getSimilarTv(
      SimilerTvParameters parameters) async {
    final result = await baseTvRemoteDataSource.getSimilarTv(parameters);
    try {
      return Right(result);
    } on ServerExeption catch (failure) {
      return Left(
        ServerFailures(failure.errorMessageModel.statusMessage),
      );
    }
  }
}
