import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/usecases/get_movie_recommendations.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'movies_recommendations_event.dart';
part 'movies_recommendations_state.dart';

class MoviesRecommendationBloc extends Bloc<MoviesRecommendationEvent, MoviesRecommendationState> {
  final GetMovieRecommendations _getMoviesRecommendations;

  MoviesRecommendationBloc(this._getMoviesRecommendations)
      : super(MoviesRecommendationEmpty()) {
    on<OnRecommendationMoviesShow>((event, emit) async {
      // TODO: implement event handler
      final id = event.id;

      emit(MoviesRecommendationLoading());
      final result = await _getMoviesRecommendations.execute(id);

      result.fold((failure) {
        emit(MoviesRecommendationError(failure.message));
      }, (data) {
        emit(MoviesRecommendationHasData(data));
      });
    });
  }
}
