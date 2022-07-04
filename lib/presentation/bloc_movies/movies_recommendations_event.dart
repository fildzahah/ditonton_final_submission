part of 'movies_recommendations_bloc.dart';

abstract class MoviesRecommendationEvent extends Equatable {
  const MoviesRecommendationEvent();
}
class OnRecommendationMoviesShow extends MoviesRecommendationEvent {
  final int id;

  OnRecommendationMoviesShow(this.id);

  @override
  List<Object?> get props => [];
}
