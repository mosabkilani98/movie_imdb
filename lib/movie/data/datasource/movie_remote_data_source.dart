import 'package:dio/dio.dart';
import 'package:movieproject/core/error/exception.dart';
import 'package:movieproject/core/network/error_massage_modele.dart';
import 'package:movieproject/core/utlitis/app_constance.dart';
import 'package:movieproject/movie/data/models/movie_details_model.dart';
import 'package:movieproject/movie/data/models/movie_modele.dart';
import 'package:movieproject/movie/data/models/recomendation_modele.dart';
import 'package:movieproject/movie/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_recomendations_usecase.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<Moviemodele>> getNowPlayingMovies();

  Future<List<Moviemodele>> getPopularMovies();

  Future<List<Moviemodele>> getTopRatedMovies();

  Future<MovieDetailModel> getMovieDetails(MovieDetailsParameters parameters);
  Future<List<RecomendationsModele>> getRecomendatios(
      RecomendationsParameters parameters);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<Moviemodele>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConsctance.nowPLayingMoviesPath);
    if (response.statusCode == 200) {
      return List<Moviemodele>.from((response.data["results"] as List)
          .map((e) => Moviemodele.fromjson(e)));
    } else {
      throw ServerException(
        errorMessageModele: ErrorMessageModele.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<Moviemodele>> getPopularMovies() async {
    final response = await Dio().get(AppConsctance.popularMoviesPath);
    if (response.statusCode == 200) {
      return List<Moviemodele>.from((response.data["results"] as List)
          .map((e) => Moviemodele.fromjson(e)));
    } else {
      throw ServerException(
        errorMessageModele: ErrorMessageModele.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<Moviemodele>> getTopRatedMovies() async {
    final response = await Dio().get(AppConsctance.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<Moviemodele>.from((response.data["results"] as List)
          .map((e) => Moviemodele.fromjson(e)));
    } else {
      throw ServerException(
        errorMessageModele: ErrorMessageModele.fromjson(response.data),
      );
    }
  }

  @override
  Future<MovieDetailModel> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final response =
        await Dio().get(AppConsctance.movieDetailsPath(parameters.movieID));
    if (response.statusCode == 200) {
      return MovieDetailModel.fromjson(response.data);
    } else {
      throw ServerException(
        errorMessageModele: ErrorMessageModele.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<RecomendationsModele>> getRecomendatios(
      RecomendationsParameters parameters) async {
    final response =
        await Dio().get(AppConsctance.recomendationsPath(parameters.id));
    if (response.statusCode == 200) {
      return List<RecomendationsModele>.from((response.data["results"] as List)
          .map((e) => RecomendationsModele.fromjson(e)));
    } else {
      throw ServerException(
        errorMessageModele: ErrorMessageModele.fromjson(response.data),
      );
    }
  }
}
