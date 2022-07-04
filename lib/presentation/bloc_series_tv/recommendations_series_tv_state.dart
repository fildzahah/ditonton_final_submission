part of 'recommendations_series_tv_bloc.dart';

abstract class RecommendationTvSeriesState extends Equatable {
  const RecommendationTvSeriesState();
  @override
  List<Object> get props => [];
}

class RecommendationTvSeriesEmpty extends RecommendationTvSeriesState {
  @override
  List<Object> get props => [];
}

class RecommendationTvSeriesLoading extends RecommendationTvSeriesState {
  @override
  List<Object> get props => [];
}

class RecommendationTvSeriesError extends RecommendationTvSeriesState {
  String message;
  RecommendationTvSeriesError(this.message);

  @override
  List<Object> get props => [message];
}

class RecommendationTvSeriesHasData extends RecommendationTvSeriesState {
  final List<TvSeries> result;

  RecommendationTvSeriesHasData(this.result);

  @override
  List<Object> get props => [result];
}