import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/usecases/get_popular_series_tv.dart';
import 'package:equatable/equatable.dart';

part 'popular_series_tv_event.dart';
part 'popular_series_tv_state.dart';

class PopularTvSeriesBloc extends Bloc<PopularTvSeriesEvent, PopularTvSeriesState> {
  final GetPopularTv _getPopularTvSeries;

  PopularTvSeriesBloc(this._getPopularTvSeries) : super(PopularTvSeriesEmpty()) {
    on<OnPopularTvSeriesShow>((event, emit) async {
      emit(PopularTvSeriesLoading());
      final result = await _getPopularTvSeries.execute();

      result.fold(
            (failure) {
          emit(PopularTvSeriesError(failure.message));
        },
            (data) {
          if (data.isEmpty) {
            emit(PopularTvSeriesEmpty());
          } else {
            emit(PopularTvSeriesHasData(data));
          }
        },
      );
    });
  }
}
