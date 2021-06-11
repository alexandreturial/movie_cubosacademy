import 'package:desafio_2/Pages/Screen_By_Genres.dart/screen_list.dart';
import 'package:desafio_2/Pages/Screen_Detail/screen_detail.dart';
import 'package:desafio_2/Pages/Screen_Home/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Cubos Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: ScreenHome(),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenHome(),
        'detail': (context) => ScreenDetail(),
        'genremovies': (context) => ScreenListMovies(),
      },
    );
  }
}
