import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/core/services/services_locator.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movies_bloc.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesBloc(sl())..add(GetNowPlayingMoviesEvent()),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return const Scaffold();
        },
      ),
    );
  }
}
