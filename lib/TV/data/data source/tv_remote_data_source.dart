import 'package:dio/dio.dart';
import 'package:movies_ca/TV/data/models/similar_tv_model.dart';
import 'package:movies_ca/TV/data/models/tv_details_model.dart';
import 'package:movies_ca/TV/data/models/tv_model.dart';
import 'package:movies_ca/TV/domain/use%20case/get_similar_tv_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_tv_details_usecase.dart';
import 'package:movies_ca/core/error/exeptions.dart';
import 'package:movies_ca/core/network/error_message_model.dart';
import 'package:movies_ca/core/utils/constants.dart';

abstract class BaseTvRemoteDataSource {
  Future<List<TvModel>> getOnTheAirTv();
  Future<List<TvModel>> getPopulerTV();
  Future<List<TvModel>> getTopRatedTV();
  Future<TvDetailsModel> getTvDetails(TvDetailsParameter parameters);
  Future<List<SimilarTvModel>> getSimilarTv(SimilerTvParameters parameters);
}

class TvRemoteDataSource extends BaseTvRemoteDataSource {
  @override
  Future<List<TvModel>> getOnTheAirTv() async {
    final response = await Dio().get(AppConstants.onTheAirTvPath);
    
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
          (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<TvModel>> getPopulerTV() async {
    final response = await Dio().get(AppConstants.onTheAirTvPath);
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
          (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<SimilarTvModel>> getSimilarTv(
      SimilerTvParameters parameters) async {
    final response = await Dio().get(AppConstants.similarTvPath(parameters.id));
    if (response.statusCode == 200) {
      return List<SimilarTvModel>.from(
        (response.data['results'] as List).map(
          (e) => SimilarTvModel.fromJson(response.data),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<TvModel>> getTopRatedTV() async {
    final response = await Dio().get(AppConstants.onTheAirTvPath);
    if (response.statusCode == 200) {
      return List<TvModel>.from(
        (response.data['results'] as List).map(
          (e) => TvModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<TvDetailsModel> getTvDetails(TvDetailsParameter parameters) async {
    final response = await Dio().get(
      AppConstants.tvDetailsPath(parameters.tvID),
    );
    if (response.statusCode == 200) {
      return TvDetailsModel.fromJson(response.data);
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
