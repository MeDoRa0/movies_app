import 'package:flutter/material.dart';
import 'package:movies_ca/movies/data/data%20source/movies_remote_data_source.dart';
import 'package:movies_ca/movies/data/repository/movies_data_repository.dart';
import 'package:movies_ca/movies/domain/repository/movie_domain_repository.dart';
import 'package:movies_ca/movies/domain/use%20case/get_now_playing_movies_usecase.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    void _getDate() async {
      BaseMovieReomteDataSource baseMovieReomteDataSource =
          MoviesRemoteDataSource();
      MovieDomainRepository movieDomainRepository = MoviesDataRepository(
          baseMovieReomteDataSource: baseMovieReomteDataSource);
      final result = await GetNowPlayingMoviesUsecase(movieDomainRepository)
          .excuteGetNowPlayingMovies();
      print(result);
    }
  }
}
