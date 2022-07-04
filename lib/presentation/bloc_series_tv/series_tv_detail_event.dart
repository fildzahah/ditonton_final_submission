part of 'series_tv_detail_bloc.dart';

abstract class DetailTvSeriesEvent extends Equatable {
  const DetailTvSeriesEvent();
}
class OnDetailTvSeriesShow extends DetailTvSeriesEvent {
  final int id;

  OnDetailTvSeriesShow(this.id);

  @override
  List<Object> get props => [];
}
