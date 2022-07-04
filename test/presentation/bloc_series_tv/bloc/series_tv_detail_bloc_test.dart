import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/season_tv.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';
import 'package:ditonton/domain/usecases/get_series_tv_detail.dart';
import 'package:ditonton/presentation/bloc_series_tv/series_tv_detail_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'series_tv_detail_bloc_test.mocks.dart';

@GenerateMocks([GetTvSeriesDetail])
void main() {
  late DetailTvSeriesBloc detailTvSeriesBloc;
  late MockGetTvSeriesDetail mockGetTvSeriesDetail;

  setUp(() {
    mockGetTvSeriesDetail = MockGetTvSeriesDetail();
    detailTvSeriesBloc = DetailTvSeriesBloc(mockGetTvSeriesDetail);
  });

  final tId = 1;

  final testTvSeriesDetail = SeriesTvDetail(
    adult: false,
    backdropPath: "/4g5gK5eGWZg8swIZl6eX2AoJp8S.jpg",
    episodeRunTime: [42],
    genres: [Genre(id: 18, name: 'Drama')],
    homepage: "https://www.telemundo.com/shows/pasion-de-gavilanes",
    id: 1,
    name: "name",
    numberOfEpisodes: 259,
    numberOfSeasons: 2,
    originalName: "Pasión de gavilanes",
    overview: "overview",
    popularity: 1747.047,
    posterPath: "posterPath",
    seasons: [
      Season(
        episodeCount: 188,
        id: 72643,
        name: "Season 1",
        posterPath: "/elrDXqvMIX3EcExwCenQMVVmnvd.jpg",
        seasonNumber: 1,
      )
    ],
    status: "Returning Series",
    type: "Scripted",
    voteAverage: 7.6,
    voteCount: 1803,
  );

  group('bloc detail tv series testing', () {
    test('initial state should be empty', () {
      expect(detailTvSeriesBloc.state, DetailTvSeriesEmpty());
    });

    blocTest<DetailTvSeriesBloc, DetailTvSeriesState>(
      'Should emit [Loading, HasData] when data is gotten successfully',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Right(testTvSeriesDetail));
        return detailTvSeriesBloc;
      },
      act: (bloc) => bloc.add(OnDetailTvSeriesShow(tId)),
      expect: () => [
        DetailTvSeriesLoading(),
        DetailTvSeriesHasData(testTvSeriesDetail),
      ],
      verify: (bloc) {
        verify(mockGetTvSeriesDetail.execute(tId));
        return OnDetailTvSeriesShow(tId).props;
      },
    );

    blocTest<DetailTvSeriesBloc, DetailTvSeriesState>(
      'Should emit [Loading, Error] when get search is unsuccessful',
      build: () {
        when(mockGetTvSeriesDetail.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return detailTvSeriesBloc;
      },
      act: (bloc) => bloc.add(OnDetailTvSeriesShow(tId)),
      expect: () => [
        DetailTvSeriesLoading(),
        DetailTvSeriesError('Server Failure'),
      ],
      verify: (bloc) => DetailTvSeriesLoading(),
    );
  });
}
