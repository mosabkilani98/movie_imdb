import 'package:movieproject/movie/domain/entities/Recomendations.dart';

class RecomendationsModele extends Recomendations {
  const RecomendationsModele({required super.id,   super.backdroppath});
  factory RecomendationsModele.fromjson(Map<String, dynamic> json) =>
      RecomendationsModele(id: json["id"], backdroppath: json["backdrop_path"]??'/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg');
}
