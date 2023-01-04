import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieproject/core/utlitis/enums.dart';
import 'package:movieproject/movie/Presentation/controller/movie_details_event.dart';
import 'package:movieproject/movie/Presentation/controller/movie_details_state.dart';
import 'package:movieproject/movie/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_recomendations_usecase.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecomendationsUseCase getRecomendationsUseCase;

  MovieDetailBloc(this.getMovieDetailsUseCase, this.getRecomendationsUseCase)
      : super(const MovieDetailState()) {
    on<GetMovieDetailEvent>((event, emit) async {
      final result =
          await getMovieDetailsUseCase.call(MovieDetailsParameters(event.id));
      result.fold(
          (l) => emit(state.copywith(
                moviedetailstate: RequestState.error,
                message: l.message,
              )),
          (r) => emit(state.copywith(
            movieDetail: r,
            moviedetailstate: RequestState.loaded
          )));
    });
    on<GetMovieRecomendationEvent>((event, emit) async {
      final result =
          await getRecomendationsUseCase.call(RecomendationsParameters(event.id));
      result.fold(
          (l) => emit(state.copywith(
                recomendationstate: RequestState.error,
                recomendationmessage: l.message,
              )),
          (r) => emit(state.copywith(
            recomendationDetail: r,
            recomendationstate: RequestState.loaded
          )));
    });
      }
}
