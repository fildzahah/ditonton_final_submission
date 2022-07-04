import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/repositories/series_tv_repository.dart';

class GetTopRatedTvSeries{
  final TvSeriesRepository repository;

  GetTopRatedTvSeries(this.repository);

  Future<Either<Failure,List<TvSeries>>> execute() {
    return repository.getTopRatedTvSeries();
  }
}