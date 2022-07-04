import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/usecases/get_series_tv_recommendations.dart';
import 'package:equatable/equatable.dart';

part 'recommendations_series_tv_event.dart';
part 'recommendations_series_tv_state.dart';

class RecommendationTvSeriesBloc extends Bloc<RecommendationTvSeriesEvent, RecommendationTvSeriesState> {
  final GetTvSeriesRecommendations _getTvSeriesRecommendations;
  RecommendationTvSeriesBloc(this._getTvSeriesRecommendations) : super(RecommendationTvSeriesEmpty()) {
    on<OnRecommendationTvSeriesShow>((event, emit) async{
      final id = event.id;
      emit(RecommendationTvSeriesLoading());
      final result = await _getTvSeriesRecommendations.execute(id);

      result.fold(
            (failure) {
          emit(RecommendationTvSeriesError(failure.message));
        },
            (data) {
          emit(RecommendationTvSeriesHasData(data));
        },
      );
    });
  }
}
