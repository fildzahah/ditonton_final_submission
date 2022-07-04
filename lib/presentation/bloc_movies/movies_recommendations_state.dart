part of 'movies_recommendations_bloc.dart';

abstract class MoviesRecommendationState extends Equatable {
  const MoviesRecommendationState();
  @override
  List<Object> get props => [];
}

class MoviesRecommendationEmpty extends MoviesRecommendationState {
  @override
  List<Object> get props => [];
}

class MoviesRecommendationLoading extends MoviesRecommendationState {
  @override
  List<Object> get props => [];
}

class MoviesRecommendationError extends MoviesRecommendationState {
  String message;
  MoviesRecommendationError(this.message);

  @override
  List<Object> get props => [message];
}

class MoviesRecommendationHasData extends MoviesRecommendationState {
  final List<Movie> result;

  MoviesRecommendationHasData(this.result);

  @override
  List<Object> get props => [result];
}
