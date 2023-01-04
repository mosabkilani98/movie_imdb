import 'package:dartz/dartz.dart';
import 'package:movieproject/movie/domain/entities/Recomendations.dart';
import 'package:movieproject/movie/domain/entities/movie.dart';
import 'package:movieproject/movie/domain/entities/movie_detail.dart';
import 'package:movieproject/movie/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_recomendations_usecase.dart';

import '../../../core/error/failuer.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failuer, List<Movie>>> getNowPlaying();

  Future<Either<Failuer, List<Movie>>> getPopularMovies();

  Future<Either<Failuer, List<Movie>>> getTopRatedMovies();
  Future<Either<Failuer, MovieDetail>> getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failuer, List<Recomendations>>> getRecomendationsMovie(RecomendationsParameters parameters);
}
