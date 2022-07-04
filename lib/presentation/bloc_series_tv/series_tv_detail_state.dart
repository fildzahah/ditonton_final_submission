part of 'series_tv_detail_bloc.dart';

abstract class DetailTvSeriesState extends Equatable {
  const DetailTvSeriesState();
  @override
  List<Object> get props => [];
}
class DetailTvSeriesEmpty extends DetailTvSeriesState {
  @override
  List<Object> get props => [];
}

class DetailTvSeriesLoading extends DetailTvSeriesState {
  @override
  List<Object> get props => [];
}

class DetailTvSeriesError extends DetailTvSeriesState {
  String message;
  DetailTvSeriesError(this.message);

  @override
  List<Object> get props => [message];
}

class DetailTvSeriesHasData extends DetailTvSeriesState {
  final SeriesTvDetail result;

  DetailTvSeriesHasData(this.result);

  @override
  List<Object> get props => [result];
}
