import 'package:movieproject/movie/data/models/geners_modet.dart';
import 'package:movieproject/movie/domain/entities/movie_detail.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel(
      {required super.id,
      required super.runtime,
      required super.geners,
      required super.backdropPath,
      required super.overview,
      required super.releaseDate,
      required super.title,
      required super.voteAverage});

  factory MovieDetailModel.fromjson(Map<String, dynamic> json) =>
      MovieDetailModel(
        id: json["id"],
        geners: List<GenesrModel>.from(
            json["genres"].map((x) => GenesrModel.fromjson(x))),
        backdropPath: json["backdrop_path"],
        overview: json["overview"],
        voteAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
        title: json["title"],
        runtime: json["runtime"]
      );
}
