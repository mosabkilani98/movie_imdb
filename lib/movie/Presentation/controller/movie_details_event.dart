import 'package:equatable/equatable.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();
}

class GetMovieDetailEvent extends MovieDetailEvent {
  final int id;

  const GetMovieDetailEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetMovieRecomendationEvent extends MovieDetailEvent {
  final int id;

  const GetMovieRecomendationEvent(this.id);
  @override
  List<Object?> get props => [id];
}
