import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_ca/TV/domain/entites/tv_domain_entites.dart';
import 'package:movies_ca/TV/domain/use%20case/get_on_the_air_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_populer_tv_usecase.dart';
import 'package:movies_ca/TV/domain/use%20case/get_top_rated_tv_usecase.dart';
import 'package:movies_ca/core/use%20case/base_use_case.dart';
import 'package:movies_ca/core/utils/enums.dart';

part 'series_event.dart';
part 'series_state.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final GetOnTheAirUsecase getOnTheAirUsecase;
  final GetPopulerTvUsecase getPopulerTvUsecase;
  final GetTopRatedTvUsecase getTopRatedTvUsecase;
  SeriesBloc(
    this.getOnTheAirUsecase,
    this.getPopulerTvUsecase,
    this.getTopRatedTvUsecase,
  ) : super(const SeriesState()) {
    on<GetOnAirSeriesEvent>(_getOnAirSeries);
    on<GetPopularSeriesEvent>(_getPopularSeries);
    on<GetTopRatedSeriesEvent>(_getTopRatedSeries);
  }
  FutureOr<void> _getOnAirSeries(
      GetOnAirSeriesEvent event, Emitter<SeriesState> emit) async {
    final result = await getOnTheAirUsecase(const NoParameters());

    result.fold(
      (l) => emit(state.copyWithSeriesState(
          onTheAirSeriesState: RequestState.error,
          onAirSeriesErrorMessage: l.message)),
      (r) => emit(state.copyWithSeriesState(
          onTheAirSeries: r, onTheAirSeriesState: RequestState.success)),
    );
  }

  FutureOr<void> _getPopularSeries(
      GetPopularSeriesEvent event, Emitter<SeriesState> emit) async {
    final result = await getPopulerTvUsecase(const NoParameters());

    result.fold(
      (l) => emit(state.copyWithSeriesState(
          populerSeriesState: RequestState.error,
          populerSeriesErrorMessage: l.message)),
      (r) => emit(state.copyWithSeriesState(
          populerSeries: r, populerSeriesState: RequestState.success)),
    );
  }

  FutureOr<void> _getTopRatedSeries(
      GetTopRatedSeriesEvent event, Emitter<SeriesState> emit) async {
    final result = await getTopRatedTvUsecase(const NoParameters());

    result.fold(
      (l) => emit(state.copyWithSeriesState(
          topRatedSeriesState: RequestState.error,
          topRatedSeriesErrorMessage: l.message)),
      (r) => emit(state.copyWithSeriesState(
          topRatedSeries: r, topRatedSeriesState: RequestState.success)),
    );
  }
}
