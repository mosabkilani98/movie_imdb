import 'package:movieproject/core/network/error_massage_modele.dart';

class ServerException implements Exception{
    final ErrorMessageModele errorMessageModele;

  const ServerException({required this.errorMessageModele});  

}
class LocalDataBaseExcption implements Exception {
  final String message;

  const LocalDataBaseExcption({required this.message});

}