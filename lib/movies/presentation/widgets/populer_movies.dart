import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/core/utils/constants.dart';
import 'package:movies_ca/core/utils/enums.dart';
import 'package:movies_ca/movies/presentation/controller/bloc/movies_bloc.dart';
import 'package:movies_ca/movies/presentation/screens/movie_detail_screen.dart';
import 'package:shimmer/shimmer.dart';

class PopulerMoviesWidget extends StatelessWidget {
  const PopulerMoviesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      buildWhen: (previous, current) =>
          previous.populerMoviesState != current.populerMoviesState,
      builder: (context, state) {
        switch (state.populerMoviesState) {
          case RequestState.loading:
            return const SizedBox(
                height: 170, child: Center(child: CircularProgressIndicator()));

          case RequestState.success:
            return FadeIn(
              duration: const Duration(milliseconds: 500),
              child: SizedBox(
                height: 170.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: state.populerMovies.length,
                  itemBuilder: (context, index) {
                    final movie = state.populerMovies[index];
                    return Container(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MovieDetailScreen(id: movie.id),
                              ));
                        },
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                          child: CachedNetworkImage(
                            width: 120.0,
                            fit: BoxFit.cover,
                            imageUrl: AppConstants.imageUrl(movie.backdropPath),
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
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 170,
              child: Center(child: Text(state.populerMoviesErrorMessage)),
            );
        }
      },
    );
  }
}
