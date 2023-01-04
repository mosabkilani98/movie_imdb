import 'package:equatable/equatable.dart';
import 'package:movieproject/core/error/failuer.dart';
import 'package:dartz/dartz.dart';
import 'package:movieproject/core/usecase/base_usaecase.dart';
import 'package:movieproject/movie/domain/entities/movie_detail.dart';
import 'package:movieproject/movie/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUsecase<MovieDetail, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failuer, MovieDetail>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieID;

  const MovieDetailsParameters(this.movieID);
  @override
  List<Object?> get props => [movieID];
}
