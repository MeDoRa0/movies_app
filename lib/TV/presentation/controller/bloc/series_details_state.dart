part of 'series_details_bloc.dart';

class SeriesDetailsState extends Equatable {
  const SeriesDetailsState({
    this.seriesDetails,
    this.seriesDetailsState = RequestState.loading,
    this.seriesDetailsErrorMessage = '',
    this.similarSeries = const [],
    this.similarSeriesState = RequestState.loading,
    this.simialrSeriesErrorMessage = '',
  });

  final TvDetailsDomainEntites? seriesDetails;
  final RequestState seriesDetailsState;
  final String seriesDetailsErrorMessage;
  final List<SimilarTvDomainEntites> similarSeries;
  final RequestState similarSeriesState;
  final String simialrSeriesErrorMessage;

  SeriesDetailsState copyWithSeriesDetailsState({
    TvDetailsDomainEntites? seriesDetails,
    RequestState? seriesDetailsState,
    String? seriesDetailsErrorMessage,
    List<SimilarTvDomainEntites>? similarSeries,
    RequestState? similarSeriesState,
    String? similarSeriesErrorMessage,
  }) {
    return SeriesDetailsState(
      seriesDetails: seriesDetails ?? this.seriesDetails,
      seriesDetailsState: seriesDetailsState ?? this.seriesDetailsState,
      seriesDetailsErrorMessage:
          seriesDetailsErrorMessage ?? this.seriesDetailsErrorMessage,
      similarSeries: similarSeries ?? this.similarSeries,
      similarSeriesState: similarSeriesState ?? this.similarSeriesState,
      simialrSeriesErrorMessage:
          similarSeriesErrorMessage ?? this.simialrSeriesErrorMessage,
    );
  }

  @override
  List<Object?> get props => [
        seriesDetails,
        seriesDetailsState,
        seriesDetailsErrorMessage,
        similarSeries,
        similarSeriesState,
        simialrSeriesErrorMessage,
      ];
}
