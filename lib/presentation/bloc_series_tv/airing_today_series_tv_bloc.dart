import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/usecases/get_now_playing_series_tv.dart';
import 'package:equatable/equatable.dart';

part 'airing_today_series_tv_event.dart';
part 'airing_today_series_tv_state.dart';

class AiringTodayTvSeriesBloc
    extends Bloc<AiringTodayTvSeriesEvent, AiringTodayTvSeriesState> {
  final GetNowPlayingTvSeries _getairingTodayTvSeries;

  AiringTodayTvSeriesBloc(this._getairingTodayTvSeries)
      : super(AiringTodayTvSeriesEmpty()) {
    on<OnAiringTodayTvSeriesShow>((event, emit) async {
      emit(AiringTodayTvSeriesLoading());
      final result = await _getairingTodayTvSeries.execute();

      result.fold(
            (failure) {
          emit(AiringTodayTvSeriesError(failure.message));
        },
            (data) {
          if (data.isEmpty) {
            emit(AiringTodayTvSeriesEmpty());
          } else {
            emit(AiringTodayTvSeriesHasData(data));
          }
        },
      );
    });
  }
}
