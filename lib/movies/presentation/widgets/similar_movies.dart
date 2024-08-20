import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/core/utils/constants.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movie_details_bloc.dart';
import 'package:movies_ca/movies/presentation/screens/movie_detail_screen.dart';
import 'package:shimmer/shimmer.dart';

class SimilarMoviesWidget extends StatelessWidget {
  const SimilarMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      builder: (context, state) {
        return SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final similar = state.similarMovies[index];
              return FadeInUp(
                from: 20,
                duration: const Duration(milliseconds: 500),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MovieDetailScreen(id: similar.id),
                        ));
                  },
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    child: CachedNetworkImage(
                      imageUrl: AppConstants.imageUrl(similar.backdropPath!),
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: Colors.grey[850]!,
                        highlightColor: Colors.grey[800]!,
                        child: Container(
                          height: 170.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                      height: 180.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            childCount: state.similarMovies.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.7,
            crossAxisCount: 3,
          ),
        );
      },
    );
  }
}
