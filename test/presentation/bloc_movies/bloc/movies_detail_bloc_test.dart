import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/genre.dart';
import 'package:ditonton/domain/entities/movie_detail.dart';
import 'package:ditonton/domain/usecases/get_movie_detail.dart';
import 'package:ditonton/presentation/bloc_movies/movies_detail_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'movies_detail_bloc_test.mocks.dart';

@GenerateMocks([GetMovieDetail])
void main() {
  late MoviesDetailBloc detailMoviesBloc;
  late MockGetMovieDetail mockGetMovieDetail;

  setUp(() {
    mockGetMovieDetail = MockGetMovieDetail();
    detailMoviesBloc = MoviesDetailBloc(mockGetMovieDetail);
  });

  final tId = 1;

  final testMovieDetail = MovieDetail(
    adult: false,
    backdropPath: 'backdropPath',
    genres: [Genre(id: 1, name: 'Action')],
    id: 1,
    originalTitle: 'originalTitle',
    overview: 'overview',
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    runtime: 120,
    title: 'title',
    voteAverage: 1,
    voteCount: 1,
  );

  group('bloc detail movie testing', () {
    test('initial state should be empty', () {
      expect(detailMoviesBloc.state, MoviesDetailEmpty());
    });

    blocTest<MoviesDetailBloc, MoviesDetailState>(
      'Should emit [Loading, HasData] when data is gotten successfully',
      build: () {
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Right(testMovieDetail));
        return detailMoviesBloc;
      },
      act: (bloc) => bloc.add(OnDetailMoviesShow(tId)),
      expect: () => [
        MoviesDetailLoading(),
        MoviesDetailHasData(testMovieDetail),
      ],
      verify: (bloc) {
        verify(mockGetMovieDetail.execute(tId));
        return OnDetailMoviesShow(tId).props;
      },
    );

    blocTest<MoviesDetailBloc, MoviesDetailState>(
      'Should emit [Loading, Error] when get search is unsuccessful',
      build: () {
        when(mockGetMovieDetail.execute(tId))
            .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
        return detailMoviesBloc;
      },
      act: (bloc) => bloc.add(OnDetailMoviesShow(tId)),
      expect: () => [
        MoviesDetailLoading(),
        MoviesDetailError('Server Failure'),
      ],
      verify: (bloc) => MoviesDetailLoading(),
    );
  });
}