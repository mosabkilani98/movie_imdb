import 'package:equatable/equatable.dart';
import 'package:movieproject/core/utlitis/enums.dart';
import 'package:movieproject/movie/domain/entities/Recomendations.dart';
import 'package:movieproject/movie/domain/entities/movie_detail.dart';

class MovieDetailState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState moviedetailstate;
  final String message;
  final List<Recomendations> recomendationDetail;
  final RequestState recomendationstate;
  final String recomendationmessage;

  const MovieDetailState(
      {this.movieDetail,
      this.moviedetailstate = RequestState.loading,
      this.message = '',
      this.recomendationDetail = const [],
      this.recomendationstate = RequestState.loading,
      this.recomendationmessage = ''});

  MovieDetailState copywith({
    MovieDetail? movieDetail,
    RequestState? moviedetailstate,
    String? message,
    List<Recomendations>? recomendationDetail,
    RequestState? recomendationstate,
    String? recomendationmessage,
  }) {
    return MovieDetailState(
      message: message ?? this.message,
      movieDetail: movieDetail ?? this.movieDetail,
      moviedetailstate: moviedetailstate ?? this.moviedetailstate,
      recomendationDetail: recomendationDetail ?? this.recomendationDetail,
      recomendationmessage: recomendationmessage ?? this.recomendationmessage,
      recomendationstate: recomendationstate ?? this.recomendationstate,
    );
  }

  @override
  List<Object?> get props => [
        moviedetailstate,
        message,
        movieDetail,
        recomendationDetail,
        recomendationmessage,
        recomendationstate
      ];
}
