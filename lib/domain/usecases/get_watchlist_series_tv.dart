import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/repositories/series_tv_repository.dart';

class GetWatchListTvSeries{
  final TvSeriesRepository _repository;
  GetWatchListTvSeries(this._repository);

  Future<Either<Failure,List<TvSeries>>> execute() {
    return _repository.getWatchlistTvSeries();
  }
}