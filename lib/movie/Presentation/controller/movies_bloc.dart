import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieproject/core/usecase/base_usaecase.dart';

import 'package:movieproject/core/utlitis/enums.dart';
import 'package:movieproject/movie/Presentation/controller/movies_event.dart';
import 'package:movieproject/movie/Presentation/controller/movies_state.dart';

import 'package:movieproject/movie/domain/usecases/get_nowplaying_movies_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_toprated_movies_usecase.dart';

class MovieBloc extends Bloc<MoviesEvent, MovieState> {
  final GetNowPlayingMoviesusecase getNowPlayingMoviesusecase;
  final GetPopularMoviesusecase getPopularMoviesusecase;
  final GetTopRatedMoviesusecase getTopRatedMoviesusecase;
  MovieBloc(this.getNowPlayingMoviesusecase, this.getPopularMoviesusecase,
      this.getTopRatedMoviesusecase)
      : super(const MovieState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesusecase(const NoParameters());

      result.fold(
          (l) => emit(state.copywith(
              nowPlayingState: RequestState.error,
              nowPlayingmessage: l.message)),
          (r) => emit(state.copywith(
              nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
    });
    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesusecase(const NoParameters());
      result.fold(
          (l) => emit(state.copywith(
              popularState: RequestState.error, populargmessage: l.message)),
          (r) => emit(state.copywith(
              popularMovies: r, popularState: RequestState.loaded)));
    });
    on<GetTopRatedMoviesEvent>((event, emit)  async{
      final result = await getTopRatedMoviesusecase(const NoParameters());
      result.fold(
          (l) => emit(state.copywith(
              topratedState: RequestState.error, topratedmessage: l.message)),
          (r) => emit(state.copywith(
              topratedMovies: r, topratedState: RequestState.loaded)));
    });
  }
}
