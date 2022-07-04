import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';
import 'package:ditonton/domain/repositories/series_tv_repository.dart';

class GetTvSeriesDetail{
  final TvSeriesRepository repository;

  GetTvSeriesDetail(this.repository);

  Future<Either<Failure, SeriesTvDetail>> execute(int id){
    return repository.getTvSeriesDetail(id);
  }
}