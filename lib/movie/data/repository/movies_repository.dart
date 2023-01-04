import 'package:dartz/dartz.dart';
import 'package:movieproject/core/error/exception.dart';
import 'package:movieproject/core/error/failuer.dart';
import 'package:movieproject/movie/data/datasource/movie_remote_data_source.dart';
import 'package:movieproject/movie/domain/entities/Recomendations.dart';
import 'package:movieproject/movie/domain/entities/movie.dart';
import 'package:movieproject/movie/domain/entities/movie_detail.dart';
import 'package:movieproject/movie/domain/repository/base_movies_repository.dart';
import 'package:movieproject/movie/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_recomendations_usecase.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failuer, List<Movie>>> getNowPlaying() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailuer(failuer.errorMessageModele.statusmessage));
    }
  }

  @override
  Future<Either<Failuer, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailuer(failuer.errorMessageModele.statusmessage));
    }
  }

  @override
  Future<Either<Failuer, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailuer(failuer.errorMessageModele.statusmessage));
    }
  }

  @override
  Future<Either<Failuer, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailuer(failuer.errorMessageModele.statusmessage));
    }
  }

  @override
  Future<Either<Failuer, List<Recomendations>>> getRecomendationsMovie(
      RecomendationsParameters parameters)async {
     final result = await baseMovieRemoteDataSource.getRecomendatios(parameters);
    try {
      return Right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailuer(failuer.errorMessageModele.statusmessage));
    }
  }
}
