import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';

abstract class TvSeriesRepository{
  Future<Either<Failure, List<TvSeries>>> getPopularTv();
  Future<Either<Failure, List<TvSeries>>> getNowPlayingTvSeries();
  Future<Either<Failure, List<TvSeries>>> getTopRatedTvSeries();
  Future<Either<Failure, List<TvSeries>>> getTvSeriesRecommendations(int id);
  Future<Either<Failure, List<TvSeries>>> searchTvSeries(String query);
  Future<Either<Failure, SeriesTvDetail>> getTvSeriesDetail(int id);
  Future<Either<Failure, String>> saveTvSeriesWatchlist(SeriesTvDetail series);
  Future<Either<Failure, String>> removeTvSeriesWatchlist(SeriesTvDetail series);
  Future<bool> tvSeriesIsAddedToWatchlist(int id);
  Future<Either<Failure, List<TvSeries>>> getWatchlistTvSeries();

}