import 'package:ditonton/domain/entities/series_tv.dart';
import 'package:ditonton/domain/entities/series_tv_detail.dart';
import 'package:equatable/equatable.dart';

class SeriesTvTable extends Equatable{
  final int id;
  final String? name;
  final String? overview;
  final String? posterPath;

  SeriesTvTable({
    required this.id,
    required this.name,
    required this.overview,
    required this.posterPath,
  });

  factory SeriesTvTable.fromEntity(SeriesTvDetail seriesTv) => SeriesTvTable(
      id: seriesTv.id,
      name: seriesTv.name,
      overview: seriesTv.overview,
      posterPath: seriesTv.posterPath,
  );

  factory SeriesTvTable.fromMap(Map<String,dynamic> map) => SeriesTvTable(
    id: map['id'],
    name: map['name'],
    overview: map['overview'],
    posterPath: map['posterPath'],
  );

  Map<String, dynamic> toJson() =>{
    'id':id,
    'name': name,
    'overview': overview,
    'posterPath':posterPath,
  };

  TvSeries toEntity() => TvSeries.watchlist(
      id:id,
      name:name,
      overview: overview,
      posterPath: posterPath,
  );

  @override
  List<Object?> get props => [id,name,overview,posterPath];
}