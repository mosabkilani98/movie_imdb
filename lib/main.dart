import 'package:flutter/material.dart';
import 'package:movieproject/core/services/service_locator.dart';
import 'package:movieproject/movie/Presentation/screens/Movies_screen.dart';

void main() {
  ServiceLocator().initilaization();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
      debugShowCheckedModeBanner: false,
      title: "Movies",
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const MainMoviesScreen(),
      
    );
  }
}
