part of 'series_bloc.dart';

 class SeriesState extends Equatable {
  final List<TvDomainEntites> onTheAirSeries;
  final RequestState onTheAirSeriesState;
  final String onAirSeriesErrorMessage;
  final List<TvDomainEntites> populerSeries;
  final RequestState populerSeriesState;
  final String populerSeriesErrorMessage;
  final List<TvDomainEntites> topRatedSeries;
  final RequestState topRatedSeriesState;
  final String topRatedSeriesErrorMessage;

  const SeriesState({
    this.onTheAirSeries = const [],
    this.onTheAirSeriesState = RequestState.loading,
    this.onAirSeriesErrorMessage = '',
    this.populerSeries = const [],
    this.populerSeriesState = RequestState.loading,
    this.populerSeriesErrorMessage = '',
    this.topRatedSeries = const [],
    this.topRatedSeriesState = RequestState.loading,
    this.topRatedSeriesErrorMessage = '',
  });
  SeriesState copyWithSeriesState({
    List<TvDomainEntites>? onTheAirSeries,
    RequestState? onTheAirSeriesState,
    String? onAirSeriesErrorMessage,
    List<TvDomainEntites>? populerSeries,
    RequestState? populerSeriesState,
    String? populerSeriesErrorMessage,
    List<TvDomainEntites>? topRatedSeries,
    RequestState? topRatedSeriesState,
    String? topRatedSeriesErrorMessage,
  }) {
    return SeriesState(
      onTheAirSeries: onTheAirSeries ?? this.onTheAirSeries,
      onTheAirSeriesState: onTheAirSeriesState ?? this.onTheAirSeriesState,
      onAirSeriesErrorMessage:
          onAirSeriesErrorMessage ?? this.onAirSeriesErrorMessage,
      populerSeries: populerSeries ?? this.populerSeries,
      populerSeriesState: populerSeriesState ?? this.populerSeriesState,
      populerSeriesErrorMessage:
          populerSeriesErrorMessage ?? this.populerSeriesErrorMessage,
      topRatedSeries: topRatedSeries ?? this.topRatedSeries,
      topRatedSeriesState: topRatedSeriesState ?? this.topRatedSeriesState,
      topRatedSeriesErrorMessage:
          topRatedSeriesErrorMessage ?? this.topRatedSeriesErrorMessage,
    );
  }

  @override
  List<Object> get props => [
        onTheAirSeries,
        onTheAirSeriesState,
        onAirSeriesErrorMessage,
        populerSeries,
        populerSeriesState,
        populerSeriesErrorMessage,
        topRatedSeries,
        topRatedSeriesState,
        topRatedSeriesErrorMessage,
      ];
}


