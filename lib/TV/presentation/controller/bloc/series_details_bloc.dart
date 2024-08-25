import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_ca/TV/domain/entites/similar_tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/entites/tv_details_domain_entites.dart';
import 'package:movies_ca/TV/domain/use%20case/get_similar_tv_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_tv_details_usecase.dart';
import 'package:movies_ca/core/utils/enums.dart';

part 'series_details_event.dart';
part 'series_details_state.dart';

class SeriesDetailsBloc extends Bloc<SeriesDetailsEvent, SeriesDetailsState> {
  SeriesDetailsBloc(this.getTvDetailsUsecase, this.getSimilarTvUsecase)
      : super(
          const SeriesDetailsState(),
        ) {
    on<GetSeriesDetailsEvent>(_getSeriesDetails);
    on<GetSimilarSeriesEvent>(_getSimilarSeries);
  }
  final GetTvDetailsUsecase getTvDetailsUsecase;
  final GetSimilarTvUsecase getSimilarTvUsecase;

  FutureOr<void> _getSeriesDetails(
      GetSeriesDetailsEvent event, Emitter<SeriesDetailsState> emit) async {
    final result =
        await getTvDetailsUsecase(TvDetailsParameter(tvID: event.id));
    result.fold(
        (l) => emit(state.copyWithSeriesDetailsState(
            seriesDetailsState: RequestState.error,
            seriesDetailsErrorMessage: l.message)),
        (r) => emit(state.copyWithSeriesDetailsState(
            seriesDetails: r, seriesDetailsState: RequestState.success)));
  }

  FutureOr<void> _getSimilarSeries(
      GetSimilarSeriesEvent event, Emitter<SeriesDetailsState> emit) async {
    final result = await getSimilarTvUsecase(SimilerTvParameters(event.id));
    result.fold(
        (l) => emit(state.copyWithSeriesDetailsState(
            similarSeriesState: RequestState.error,
            seriesDetailsErrorMessage: l.message)),
        (r) => emit(state.copyWithSeriesDetailsState(
            similarSeries: r, similarSeriesState: RequestState.success)));
  }
}
