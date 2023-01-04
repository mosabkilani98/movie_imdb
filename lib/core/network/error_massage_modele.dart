import 'package:equatable/equatable.dart';

class ErrorMessageModele extends Equatable{
  final int statusCode;
  final String statusmessage;
  final bool sucssess;
  const ErrorMessageModele(
    {
      required this.statusCode,
      required this.statusmessage,
      required this.sucssess,
    }
  );
  factory ErrorMessageModele.fromjson(Map<String,dynamic>json){
    return ErrorMessageModele(
     statusCode: json["status_code"],
     statusmessage: json["status_message"],
     sucssess: json["success"],
    );
  }
  
  @override
   
  List<Object?> get props => [statusCode,statusmessage,sucssess];

   
}