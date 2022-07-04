import 'package:bloc_test/bloc_test.dart';
import 'package:ditonton/presentation/bloc_movies/movies_detail_bloc.dart';
import 'package:ditonton/presentation/bloc_movies/now_playing_movies_bloc.dart';
import 'package:ditonton/presentation/bloc_movies/popular_movies_bloc.dart';
import 'package:ditonton/presentation/bloc_movies/movies_recommendations_bloc.dart';
import 'package:ditonton/presentation/bloc_movies/top_rated_movies_bloc.dart';
import 'package:ditonton/presentation/bloc_movies/watchlist_movies_bloc.dart';
import 'package:mocktail/mocktail.dart';

// Now Playing
class FakeNowPlayingMoviesEvent extends Fake implements NowPlayingMoviesEvent {}

class FakeNowPlayingMoviesState extends Fake implements NowPlayingMoviesState {}

class FakeNowPlayingMoviesBloc
    extends MockBloc<NowPlayingMoviesEvent, NowPlayingMoviesState>
    implements NowPlayingMoviesBloc {}

// Popular
class FakePopularMoviesEvent extends Fake implements PopularMoviesEvent {}

class FakePopularMoviesState extends Fake implements PopularMoviesState {}

class FakePopularMoviesBloc
    extends MockBloc<PopularMoviesEvent, PopularMoviesState>
    implements PopularMoviesBloc {}

// Top Rated
class FakeTopRatedMoviesEvent extends Fake implements TopRatedMoviesEvent {}

class FakeTopRatedMoviesState extends Fake implements TopRatedMoviesState {}

class FakeTopRatedMoviesBloc
    extends MockBloc<TopRatedMoviesEvent, TopRatedMoviesState>
    implements TopRatedMoviesBloc {}

// Detail Movie
class FakeMovieDetailEvent extends Fake implements MoviesDetailEvent {}

class FakeMovieDetailState extends Fake implements MoviesDetailState {}

class FakeDetailMovieBloc extends MockBloc<MoviesDetailEvent, MoviesDetailState>
    implements MoviesDetailBloc {}

// Recomendation
class FakeMovieRecommendationsEvent extends Fake
    implements MoviesRecommendationEvent {}

class FakeMovieRecommendationsState extends Fake
    implements MoviesRecommendationState {}

class FakeMovieRecommendationsBloc
    extends MockBloc<MoviesRecommendationEvent, MoviesRecommendationState>
    implements MoviesRecommendationBloc {}

// Watch List
class FakeWatchlistMoviesEvent extends Fake implements WatchlistMoviesEvent {}

class FakeWatchlistMoviesState extends Fake implements WatchlistMoviesState {}

class FakeWatchlistMovieBloc
    extends MockBloc<WatchlistMoviesEvent, WatchlistMoviesState>
    implements WatchlistMoviesBloc {}