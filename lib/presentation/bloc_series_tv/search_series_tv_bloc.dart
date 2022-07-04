import 'package:bloc/bloc.dart';
import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/usecases/search_series_tv.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'search_series_tv_event.dart';
part 'search_series_tv_state.dart';

class SearchTvSeriesBloc extends Bloc<SearchTvSeriesEvent, SearchTvSeriesState> {
  final SearchTvSeries _searchTvSeries;

  SearchTvSeriesBloc(this._searchTvSeries) : super(SearchTvSeriesEmpty()) {
    EventTransformer<T> debounce<T>(Duration duration) {
      return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
    }

    on<OnQueryChanged>((event, emit) async {
      final query = event.query;

      emit(SearchTvSeriesLoading());
      final result = await _searchTvSeries.execute(query);

      result.fold(
            (failure) {
          emit(SearchTvSeriesError(failure.message));
        },
            (data) {
          emit(SearchTvSeriesHasData(data));
        },
      );
    }, transformer: debounce(const Duration(milliseconds: 500)));
  }
}