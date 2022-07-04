part of 'movies_detail_bloc.dart';

abstract class MoviesDetailEvent extends Equatable {
  const MoviesDetailEvent();

}
class OnDetailMoviesShow extends MoviesDetailEvent {
  final int id;

  OnDetailMoviesShow(this.id);

  @override
  List<Object> get props => [];
}