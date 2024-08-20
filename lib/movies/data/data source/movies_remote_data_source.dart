import 'package:dio/dio.dart';
import 'package:movies_ca/core/error/exeptions.dart';
import 'package:movies_ca/core/network/error_message_model.dart';
import 'package:movies_ca/core/utils/constants.dart';
import 'package:movies_ca/movies/data/models/movie_details_model.dart';
import 'package:movies_ca/movies/data/models/movies_model.dart';
import 'package:movies_ca/movies/data/models/similer_movies_model.dart';
import 'package:movies_ca/movies/domain/use%20case/get_movie_details_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';

//contract class
abstract class BaseMovieReomteDataSource {
  Future<List<MoviesModel>> getNowPlayingMoveis();
  Future<List<MoviesModel>> getPopulerMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameter parameters);

  Future<List<SimilerMoviesModel>> getSimilerMovies(
      SimilerMoviesParameters parameters);
}

class MoviesRemoteDataSource extends BaseMovieReomteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMoveis() async {
    final response = await Dio().get(AppConstants.nowPlayingPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data['results'] as List).map(
          (e) => MoviesModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<MoviesModel>> getPopulerMovies() async {
    final response = await Dio().get(AppConstants.populerMoviesPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data['results'] as List).map(
          (e) => MoviesModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(AppConstants.topRatedMoviesPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from(
        (response.data['results'] as List).map(
          (e) => MoviesModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(
      MovieDetailsParameter parameters) async {
    final response =
        await Dio().get(AppConstants.movieDetailsPath(parameters.movieID));

    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<SimilerMoviesModel>> getSimilerMovies(
      SimilerMoviesParameters parameters) async {
    final response =
        await Dio().get(AppConstants.similarMoviesPath(parameters.id));

    if (response.statusCode == 200) {
      return List<SimilerMoviesModel>.from(
        (response.data['results'] as List).map(
          (e) => SimilerMoviesModel.fromJson(e),
        ),
      );
    } else {
      throw ServerExeption(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
