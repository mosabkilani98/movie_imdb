import 'package:equatable/equatable.dart';
import 'package:movieproject/movie/domain/entities/movie.dart';

import '../../../core/utlitis/enums.dart';

class MovieState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingmessage;
  final List<Movie> popularMovies;
  final RequestState popularState;
  final String populargmessage;
  final List<Movie> topratedMovies;
  final RequestState topratedState;
  final String topratedmessage;

  const MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingmessage = "",
    this.popularMovies = const [],
    this.popularState = RequestState.loading,
    this.populargmessage = "",
    this.topratedMovies = const [],
    this.topratedState = RequestState.loading,
    this.topratedmessage = "",
  });
  MovieState copywith({
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingmessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? populargmessage,
    List<Movie>? topratedMovies,
    RequestState? topratedState,
    String? topratedmessage,
  }) {
    return MovieState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingmessage: nowPlayingmessage ?? this.nowPlayingmessage,
        popularMovies: popularMovies ?? this.popularMovies,
        popularState: popularState ?? this.popularState,
        populargmessage: populargmessage ?? this.populargmessage,
        topratedMovies: topratedMovies ?? this.topratedMovies,
        topratedState: topratedState ?? this.topratedState,
        topratedmessage: topratedmessage ?? this.topratedmessage);
  }

  @override
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingmessage,
        popularMovies,
        popularState,
        populargmessage,
        topratedMovies,
        topratedState,
        topratedmessage
      ];
}
