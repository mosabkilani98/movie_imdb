import 'package:equatable/equatable.dart';

class Recomendations extends Equatable{
  final int id;
  final String? backdroppath;

  const Recomendations({required this.id, this.backdroppath});
  
  @override
  
  List<Object?> get props => [id,backdroppath];
}