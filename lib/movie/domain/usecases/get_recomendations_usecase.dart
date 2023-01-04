import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movieproject/core/error/failuer.dart';
import 'package:movieproject/core/usecase/base_usaecase.dart';
import 'package:movieproject/movie/domain/entities/Recomendations.dart';
import 'package:movieproject/movie/domain/repository/base_movies_repository.dart';

class GetRecomendationsUseCase extends BaseUsecase<List<Recomendations>,RecomendationsParameters>
{
  final BaseMoviesRepository baseMoviesRepository;

  GetRecomendationsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failuer, List<Recomendations>>> call(RecomendationsParameters parameters)async {
    
    return await baseMoviesRepository.getRecomendationsMovie(parameters);
  }
}
class RecomendationsParameters extends Equatable{
  final int id;

  const RecomendationsParameters(this.id);
  
  @override
  
  List<Object?> get props => [id];
}