import 'package:movieproject/movie/domain/entities/geners.dart';

class GenesrModel extends Geners {
  const GenesrModel({required super.name, required super.id});
  factory GenesrModel.fromjson(Map<String, dynamic> json) =>
      GenesrModel(name: json["name"], id: json["id"]);
}
