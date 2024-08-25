part of 'series_details_bloc.dart';

abstract class SeriesDetailsEvent extends Equatable {
  const SeriesDetailsEvent();
}

class GetSeriesDetailsEvent extends SeriesDetailsEvent {
  final int id;

  const GetSeriesDetailsEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetSimilarSeriesEvent extends SeriesDetailsEvent {
  final int id;

  const GetSimilarSeriesEvent(this.id);
  
  @override
  List<Object?> get props => [id];
}