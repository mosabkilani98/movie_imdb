import 'package:get_it/get_it.dart';
import 'package:movieproject/movie/Presentation/controller/movie_details_bloc.dart';
import 'package:movieproject/movie/Presentation/controller/movies_bloc.dart';
import 'package:movieproject/movie/data/datasource/movie_remote_data_source.dart';
import 'package:movieproject/movie/data/repository/movies_repository.dart';
import 'package:movieproject/movie/domain/repository/base_movies_repository.dart';
import 'package:movieproject/movie/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_nowplaying_movies_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_recomendations_usecase.dart';
import 'package:movieproject/movie/domain/usecases/get_toprated_movies_usecase.dart';

final sl= GetIt.instance;
class ServiceLocator {
  void initilaization(){
      
      sl.registerLazySingleton(() => GetNowPlayingMoviesusecase(sl()));
      sl.registerLazySingleton(() => GetPopularMoviesusecase(sl()));
      sl.registerLazySingleton(() => GetTopRatedMoviesusecase(sl()));
      sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
      sl.registerLazySingleton(() => GetRecomendationsUseCase(sl()));


      sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));

      sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
      sl.registerFactory(() => MovieBloc(sl(),sl(),sl()));
      sl.registerFactory(() => MovieDetailBloc(sl(),sl()));
  }
}