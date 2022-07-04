part of 'watchlist_series_tv_bloc.dart';

abstract class WatchlistTvSeriesEvent extends Equatable {
  const WatchlistTvSeriesEvent();
}

class OnWatchlistTvSeries extends WatchlistTvSeriesEvent {
  @override
  List<Object> get props => [];
}

class WatchlistTvSeries extends WatchlistTvSeriesEvent {
  final int id;

  WatchlistTvSeries(this.id);

  @override
  List<Object> get props => [id];
}

class InsertWatchlistTvSeries extends WatchlistTvSeriesEvent {
  final SeriesTvDetail movie;

  InsertWatchlistTvSeries(this.movie);

  @override
  List<Object> get props => [movie];
}

class DeleteWatchlistTvSeries extends WatchlistTvSeriesEvent {
  final SeriesTvDetail movie;

  DeleteWatchlistTvSeries(this.movie);

  @override
  List<Object> get props => [movie];
}