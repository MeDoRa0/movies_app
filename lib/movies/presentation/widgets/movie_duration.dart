import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movie_details_bloc.dart';

class MovieDuration extends StatelessWidget {
  const MovieDuration({super.key});

  String _showDuration(int runtime) {
    final int hours = runtime ~/ 60;
    final int minutes = runtime % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m';
    } else {
      return '${minutes}m';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        return Text(
          _showDuration(state.movieDetails!.runtime),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
          ),
        );
      },
    );
  }
}
