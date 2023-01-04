import 'package:dartz/dartz.dart';
import 'package:movieproject/core/usecase/base_usaecase.dart';
import 'package:movieproject/movie/domain/entities/movie.dart';
import 'package:movieproject/movie/domain/repository/base_movies_repository.dart';

import '../../../core/error/failuer.dart';

class GetNowPlayingMoviesusecase extends BaseUsecase<List<Movie>,NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;
  GetNowPlayingMoviesusecase(this.baseMoviesRepository);
  @override
  Future<Either< Failuer ,List<Movie>>> call(NoParameters parameters) async{
    return await baseMoviesRepository.getNowPlaying();
  } 
}