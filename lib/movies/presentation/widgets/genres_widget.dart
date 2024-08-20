import 'package:flutter/material.dart';
import 'package:movies_ca/movies/domain/entites/movie_geners_entites.dart';

class GenresWidget extends StatelessWidget {
  const GenresWidget({super.key, required this.genres});

  final List<MovieGenresEntites> genres;

  String _showGenres() {
    String result = '';
    for (var genre in genres) {
      result += '${genre.name}, ';
    }

    if (result.isEmpty) {
      return result;
    }

    return result.substring(0, result.length - 2);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'Genres: ${_showGenres()}',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.2,
      ),
    );
  }
}
