import 'package:movieproject/movie/domain/entities/movie.dart';

class Moviemodele extends Movie{
  const Moviemodele({
  required super.id,
  required super.title,
  required super.backdropPath,
  required super.generid,
  required super.overview,
  required super.voteAverage,
   required super.releaseDate
   });
factory Moviemodele.fromjson(Map<String,dynamic>json)=>Moviemodele(
  id: json["id"],
  title: json["title"],
  backdropPath:json["backdrop_path"], 
  generid: List<int>.from(json["genre_ids"].map((e) =>e)), 
  overview: json["overview"], 
  voteAverage: json["vote_average"].toDouble(), 
  releaseDate: json["release_date"]
  );
}