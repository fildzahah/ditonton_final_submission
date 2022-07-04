import 'package:ditonton/common/exception.dart';
import 'package:ditonton/data/datasources/db/database_helper.dart';
import 'package:ditonton/data/models/series_tv_table.dart';

abstract class TvSeriesLocalDataSource {
  Future<String> insertTvSeriesWatchlist(SeriesTvTable series);
  Future<String> removeTvSeriesWatchlist(SeriesTvTable series);
  Future<SeriesTvTable?> getTvSeriesById(int id);
  Future<List<SeriesTvTable>> getWatchlistTvSeries();
}

class TvSeriesLocalDataSourceImpl implements TvSeriesLocalDataSource {
  final DatabaseHelper databaseHelper;

  TvSeriesLocalDataSourceImpl({required this.databaseHelper});

  @override
  Future<String> insertTvSeriesWatchlist(SeriesTvTable series) async {
    try {
      await databaseHelper.insertTvSeriesWatchlist(series);
      return 'Added to Watchlist';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> removeTvSeriesWatchlist(SeriesTvTable series) async {
    try {
      await databaseHelper.removeTvSeriesWatchlist(series);
      return 'Removed from Watchlist';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<SeriesTvTable?> getTvSeriesById(int id) async {
    final result = await databaseHelper.getTvSeriesById(id);
    if (result != null) {
      return SeriesTvTable.fromMap(result);
    } else{
      return null;
    }
  }

  @override
  Future<List<SeriesTvTable>> getWatchlistTvSeries() async{
    final result = await databaseHelper.getWatchlistTvSeries();
    return result.map((data) => SeriesTvTable.fromMap(data)).toList();
  }
}
