import 'package:ditonton/domain/repositories/series_tv_repository.dart';

class GetTvSeriesWatchListStatus{
  final TvSeriesRepository repository;
  GetTvSeriesWatchListStatus(this.repository);

  Future<bool> execute(int id) async{
    return repository.tvSeriesIsAddedToWatchlist(id);
  }
}