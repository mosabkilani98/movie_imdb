import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movieproject/core/error/failuer.dart';

abstract class BaseUsecase<T, Parameters> {
  Future<Either<Failuer, T>> call(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}
