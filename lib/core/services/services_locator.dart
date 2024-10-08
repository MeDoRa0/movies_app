import 'package:get_it/get_it.dart';
import 'package:movies_ca/movies/data/data%20source/movies_remote_data_source.dart';
import 'package:movies_ca/movies/data/repository/movies_data_repository.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';
import 'package:movies_ca/movies/domain/use%20case/get_movie_details_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_now_playing_movies_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_populer_movies_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_similer_movies_usecase.dart';
import 'package:movies_ca/movies/domain/use%20case/get_top_rated_movies_usecase.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movie_details_bloc.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movies_bloc.dart';

// sl means service locator
final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //bloc
    sl.registerFactory(
      () => MoviesBloc(sl(), sl(), sl()),
    );
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));
    //data source
    sl.registerLazySingleton<BaseMovieReomteDataSource>(
      () => MoviesRemoteDataSource(),
    );
    //  repository
    sl.registerLazySingleton<MovieDomainRepository>(
      () => MoviesDataRepository(baseMovieReomteDataSource: sl()),
    );
    //use cases
    sl.registerLazySingleton(
      () => GetNowPlayingMoviesUsecase(sl()),
    );
    sl.registerLazySingleton(
      () => GetPopulerMoviesUseCase(sl()),
    );
    sl.registerLazySingleton(
      () => GetTopRatedMoviesUsecase(sl()),
    );
    sl.registerLazySingleton(() => GetMovieDetailsUsecase(sl()));
    sl.registerLazySingleton(() => GetSimilerMoviesUsecase(sl()));
  }
}
