import 'package:equatable/equatable.dart';
import 'package:movieproject/movie/domain/entities/geners.dart';

 class MovieDetail extends Equatable {
  final int id;
  final List<Geners> geners;
  final String title;
  final String backdropPath;
  final String overview;
  final double voteAverage;
  final String releaseDate;
  final int runtime;

  const MovieDetail(
      {required this.id,
      required this.runtime,
      required this.geners,
      required this.backdropPath,
      required this.overview,
      required this.releaseDate,
      required this.title,
      required this.voteAverage});
  @override
  List<Object?> get props => [
        id,
        title,
        backdropPath,
        overview,
        voteAverage,
        releaseDate,
        geners,
        runtime
      ];
}
