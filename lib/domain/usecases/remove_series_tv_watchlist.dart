import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';
import 'package:ditonton/domain/repositories/series_tv_repository.dart';

class RemoveTvSeriesWatchlist{
  final TvSeriesRepository repository;
  RemoveTvSeriesWatchlist(this.repository);

  Future<Either<Failure,String>> execute(SeriesTvDetail series) {
    return repository.removeTvSeriesWatchlist(series);
  }
}