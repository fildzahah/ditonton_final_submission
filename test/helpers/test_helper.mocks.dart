// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:convert' as _i24;
import 'dart:typed_data' as _i25;

import 'package:dartz/dartz.dart' as _i2;
import 'package:ditonton/common/failure.dart' as _i8;
import 'package:ditonton/data/datasources/db/database_helper.dart' as _i15;
import 'package:ditonton/data/datasources/movie_local_data_source.dart' as _i13;
import 'package:ditonton/data/datasources/movie_remote_data_source.dart'
as _i11;
import 'package:ditonton/data/datasources/series_tv_local_data_source.dart'
as _i23;
import 'package:ditonton/data/datasources/series_tv_remote_data_source.dart'
as _i21;
import 'package:ditonton/data/models/movie_detail_model.dart' as _i3;
import 'package:ditonton/data/models/movie_model.dart' as _i12;
import 'package:ditonton/data/models/movie_table.dart' as _i14;
import 'package:ditonton/data/models/series_tv_detail_model.dart' as _i4;
import 'package:ditonton/data/models/series_tv_model.dart' as _i22;
import 'package:ditonton/data/models/series_tv_table.dart' as _i17;
import 'package:ditonton/domain/entities/movie.dart' as _i9;
import 'package:ditonton/domain/entities/movie_detail.dart' as _i10;
import 'package:ditonton/domain/entities/series_tv.dart' as _i19;
import 'package:ditonton/domain/entities/series_tv_detail.dart' as _i20;
import 'package:ditonton/domain/repositories/movie_repository.dart' as _i6;
import 'package:ditonton/domain/repositories/series_tv_repository.dart' as _i18;
import 'package:http/http.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite/sqflite.dart' as _i16;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeMovieDetailResponse_1 extends _i1.Fake
    implements _i3.MovieDetailResponse {}

class _FakeTvSeriesDetailResponse_2 extends _i1.Fake
    implements _i4.TvSeriesDetailResponse {}

class _FakeResponse_3 extends _i1.Fake implements _i5.Response {}

class _FakeStreamedResponse_4 extends _i1.Fake implements _i5.StreamedResponse {
}

/// A class which mocks [MovieRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRepository extends _i1.Mock implements _i6.MovieRepository {
  MockMovieRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getPopularMovies() =>
      (super.noSuchMethod(Invocation.method(#getPopularMovies, []),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getTopRatedMovies() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedMovies, []),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i10.MovieDetail>> getMovieDetail(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
          returnValue: Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>.value(
              _FakeEither_0<_i8.Failure, _i10.MovieDetail>())) as _i7
          .Future<_i2.Either<_i8.Failure, _i10.MovieDetail>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getMovieRecommendations(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> searchMovies(
      String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> saveWatchlist(
      _i10.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [movie]),
          returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
              _FakeEither_0<_i8.Failure, String>()))
      as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> removeWatchlist(
      _i10.MovieDetail? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
              _FakeEither_0<_i8.Failure, String>()))
      as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Movie>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>.value(
              _FakeEither_0<_i8.Failure, List<_i9.Movie>>())) as _i7
          .Future<_i2.Either<_i8.Failure, List<_i9.Movie>>>);
}

/// A class which mocks [MovieRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieRemoteDataSource extends _i1.Mock
    implements _i11.MovieRemoteDataSource {
  MockMovieRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i12.MovieModel>> getNowPlayingMovies() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingMovies, []),
          returnValue:
          Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
      as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> getPopularMovies() => (super.noSuchMethod(
      Invocation.method(#getPopularMovies, []),
      returnValue: Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
  as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> getTopRatedMovies() => (super.noSuchMethod(
      Invocation.method(#getTopRatedMovies, []),
      returnValue: Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
  as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<_i3.MovieDetailResponse> getMovieDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieDetail, [id]),
          returnValue: Future<_i3.MovieDetailResponse>.value(
              _FakeMovieDetailResponse_1()))
      as _i7.Future<_i3.MovieDetailResponse>);
  @override
  _i7.Future<List<_i12.MovieModel>> getMovieRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieRecommendations, [id]),
          returnValue:
          Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
      as _i7.Future<List<_i12.MovieModel>>);
  @override
  _i7.Future<List<_i12.MovieModel>> searchMovies(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchMovies, [query]),
          returnValue:
          Future<List<_i12.MovieModel>>.value(<_i12.MovieModel>[]))
      as _i7.Future<List<_i12.MovieModel>>);
}

/// A class which mocks [MovieLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockMovieLocalDataSource extends _i1.Mock
    implements _i13.MovieLocalDataSource {
  MockMovieLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<String> insertWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<String> removeWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i14.MovieTable?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
          returnValue: Future<_i14.MovieTable?>.value())
      as _i7.Future<_i14.MovieTable?>);
  @override
  _i7.Future<List<_i14.MovieTable>> getWatchlistMovies() => (super.noSuchMethod(
      Invocation.method(#getWatchlistMovies, []),
      returnValue: Future<List<_i14.MovieTable>>.value(<_i14.MovieTable>[]))
  as _i7.Future<List<_i14.MovieTable>>);
}

/// A class which mocks [DatabaseHelper].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i15.DatabaseHelper {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i16.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
          returnValue: Future<_i16.Database?>.value())
      as _i7.Future<_i16.Database?>);
  @override
  _i7.Future<int> insertWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<int> insertTvSeriesWatchlist(_i17.SeriesTvTable? series) =>
      (super.noSuchMethod(Invocation.method(#insertTvSeriesWatchlist, [series]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<int> removeWatchlist(_i14.MovieTable? movie) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [movie]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<int> removeTvSeriesWatchlist(_i17.SeriesTvTable? series) =>
      (super.noSuchMethod(Invocation.method(#removeTvSeriesWatchlist, [series]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<Map<String, dynamic>?> getMovieById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getMovieById, [id]),
          returnValue: Future<Map<String, dynamic>?>.value())
      as _i7.Future<Map<String, dynamic>?>);
  @override
  _i7.Future<Map<String, dynamic>?> getTvSeriesById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
          returnValue: Future<Map<String, dynamic>?>.value())
      as _i7.Future<Map<String, dynamic>?>);
  @override
  _i7.Future<List<Map<String, dynamic>>> getWatchlistMovies() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistMovies, []),
          returnValue: Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[]))
      as _i7.Future<List<Map<String, dynamic>>>);
  @override
  _i7.Future<List<Map<String, dynamic>>> getWatchlistTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
          returnValue: Future<List<Map<String, dynamic>>>.value(
              <Map<String, dynamic>>[]))
      as _i7.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [TvSeriesRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesRepository extends _i1.Mock
    implements _i18.TvSeriesRepository {
  MockTvSeriesRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTv, []),
          returnValue:
          Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
              _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
      as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>
  getNowPlayingTvSeries() => (super.noSuchMethod(
      Invocation.method(#getNowPlayingTvSeries, []),
      returnValue:
      Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
          _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
  as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>
  getTopRatedTvSeries() => (super.noSuchMethod(
      Invocation.method(#getTopRatedTvSeries, []),
      returnValue:
      Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
          _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
  as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
  _i7.Future<_i2.Either<_i8.Failure, _i20.SeriesTvDetail>> getTvSeriesDetail(
      int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
          returnValue:
          Future<_i2.Either<_i8.Failure, _i20.SeriesTvDetail>>.value(
              _FakeEither_0<_i8.Failure, _i20.SeriesTvDetail>()))
      as _i7.Future<_i2.Either<_i8.Failure, _i20.SeriesTvDetail>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>
  getTvSeriesRecommendations(int? id) => (super.noSuchMethod(
      Invocation.method(#getTvSeriesRecommendations, [id]),
      returnValue:
      Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
          _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
  as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>> searchTvSeries(
      String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTvSeries, [query]),
          returnValue:
          Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
              _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
      as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> saveTvSeriesWatchlist(
      _i20.SeriesTvDetail? series) =>
      (super.noSuchMethod(Invocation.method(#saveTvSeriesWatchlist, [series]),
          returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
              _FakeEither_0<_i8.Failure, String>()))
      as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> removeTvSeriesWatchlist(
      _i20.SeriesTvDetail? series) =>
      (super.noSuchMethod(Invocation.method(#removeTvSeriesWatchlist, [series]),
          returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
              _FakeEither_0<_i8.Failure, String>()))
      as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<bool> tvSeriesIsAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#tvSeriesIsAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>
  getWatchlistTvSeries() => (super.noSuchMethod(
      Invocation.method(#getWatchlistTvSeries, []),
      returnValue:
      Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>.value(
          _FakeEither_0<_i8.Failure, List<_i19.TvSeries>>()))
  as _i7.Future<_i2.Either<_i8.Failure, List<_i19.TvSeries>>>);
}

/// A class which mocks [TvSeriesRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesRemoteDataSource extends _i1.Mock
    implements _i21.TvSeriesRemoteDataSource {
  MockTvSeriesRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i22.SeriesTvModel>> getNowPlayingTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingTvSeries, []),
          returnValue: Future<List<_i22.SeriesTvModel>>.value(
              <_i22.SeriesTvModel>[])) as _i7.Future<List<_i22.SeriesTvModel>>);
  @override
  _i7.Future<List<_i22.SeriesTvModel>> getPopularTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getPopularTvSeries, []),
          returnValue: Future<List<_i22.SeriesTvModel>>.value(
              <_i22.SeriesTvModel>[])) as _i7.Future<List<_i22.SeriesTvModel>>);
  @override
  _i7.Future<List<_i22.SeriesTvModel>> getTopRatedTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTvSeries, []),
          returnValue: Future<List<_i22.SeriesTvModel>>.value(
              <_i22.SeriesTvModel>[])) as _i7.Future<List<_i22.SeriesTvModel>>);
  @override
  _i7.Future<_i4.TvSeriesDetailResponse> getTvSeriesDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesDetail, [id]),
          returnValue: Future<_i4.TvSeriesDetailResponse>.value(
              _FakeTvSeriesDetailResponse_2()))
      as _i7.Future<_i4.TvSeriesDetailResponse>);
  @override
  _i7.Future<List<_i22.SeriesTvModel>> searchTvSeries(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTvSeries, [query]),
          returnValue: Future<List<_i22.SeriesTvModel>>.value(
              <_i22.SeriesTvModel>[])) as _i7.Future<List<_i22.SeriesTvModel>>);
  @override
  _i7.Future<List<_i22.SeriesTvModel>> getTvSeriesRecommendations(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesRecommendations, [id]),
          returnValue: Future<List<_i22.SeriesTvModel>>.value(
              <_i22.SeriesTvModel>[])) as _i7.Future<List<_i22.SeriesTvModel>>);
}

/// A class which mocks [TvSeriesLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesLocalDataSource extends _i1.Mock
    implements _i23.TvSeriesLocalDataSource {
  MockTvSeriesLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<String> insertTvSeriesWatchlist(_i17.SeriesTvTable? series) =>
      (super.noSuchMethod(Invocation.method(#insertTvSeriesWatchlist, [series]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<String> removeTvSeriesWatchlist(_i17.SeriesTvTable? series) =>
      (super.noSuchMethod(Invocation.method(#removeTvSeriesWatchlist, [series]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i17.SeriesTvTable?> getTvSeriesById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvSeriesById, [id]),
          returnValue: Future<_i17.SeriesTvTable?>.value())
      as _i7.Future<_i17.SeriesTvTable?>);
  @override
  _i7.Future<List<_i17.SeriesTvTable>> getWatchlistTvSeries() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTvSeries, []),
          returnValue: Future<List<_i17.SeriesTvTable>>.value(
              <_i17.SeriesTvTable>[])) as _i7.Future<List<_i17.SeriesTvTable>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i5.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i5.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> post(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i24.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#post, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> put(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i24.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#put, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> patch(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i24.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#patch, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<_i5.Response> delete(Uri? url,
      {Map<String, String>? headers,
        Object? body,
        _i24.Encoding? encoding}) =>
      (super.noSuchMethod(
          Invocation.method(#delete, [url],
              {#headers: headers, #body: body, #encoding: encoding}),
          returnValue: Future<_i5.Response>.value(_FakeResponse_3()))
      as _i7.Future<_i5.Response>);
  @override
  _i7.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i25.Uint8List> readBytes(Uri? url,
      {Map<String, String>? headers}) =>
      (super.noSuchMethod(
          Invocation.method(#readBytes, [url], {#headers: headers}),
          returnValue: Future<_i25.Uint8List>.value(_i25.Uint8List(0)))
      as _i7.Future<_i25.Uint8List>);
  @override
  _i7.Future<_i5.StreamedResponse> send(_i5.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
          returnValue:
          Future<_i5.StreamedResponse>.value(_FakeStreamedResponse_4()))
      as _i7.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}