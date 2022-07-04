import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';
import 'package:ditonton/domain/usecases/get_series_tv_detail.dart';
import 'package:equatable/equatable.dart';

part 'series_tv_detail_event.dart';
part 'series_tv_detail_state.dart';

class DetailTvSeriesBloc
    extends Bloc<DetailTvSeriesEvent, DetailTvSeriesState> {
  final GetTvSeriesDetail _getTvSeriesDetail;
  DetailTvSeriesBloc(this._getTvSeriesDetail) : super(DetailTvSeriesEmpty()) {
    on<OnDetailTvSeriesShow>((event, emit) async {
      final id = event.id;
      emit(DetailTvSeriesLoading());
      final result = await _getTvSeriesDetail.execute(id);

      result.fold(
            (failure) {
          emit(DetailTvSeriesError(failure.message));
        },
            (data) {
          emit(DetailTvSeriesHasData(data));
        },
      );
    });
  }
}
