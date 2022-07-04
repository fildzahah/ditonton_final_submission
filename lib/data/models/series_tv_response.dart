import 'package:ditonton/data/models/series_tv_model.dart';
import 'package:equatable/equatable.dart';

class SeriesTvResponse extends Equatable{
  final List<SeriesTvModel> tvList;
  SeriesTvResponse({required this.tvList});

  factory SeriesTvResponse.fromJson(Map<String,dynamic> json) =>
      SeriesTvResponse(
        tvList: List<SeriesTvModel>.from((json["results"] as List)
            .map((x) => SeriesTvModel.fromJson(x))
            .where((element) => element.posterPath != null)),
      );
  Map<String,dynamic> toJson() =>{
    "results": List<dynamic>.from(tvList.map((e) => e.toJson())),
  };

  @override
  List<Object> get props => [tvList];

}