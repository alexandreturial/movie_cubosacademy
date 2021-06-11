import 'dart:async';

import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/Pages/Screen_Home/models/model.dart';
import 'package:desafio_2/core/JsonType/movies.dart';


class HomeController {
  final homeData = HomeModel();
  
  //Future<Movies> get movies => homeData.movies;
  //Future<Genres> get genres => homeData.genres;

  StreamController<Movies> moviesStream = StreamController();
  StreamController<Genres> genresStream = StreamController();

  loadScreenData(){
    homeData.fetchMoveis();
    homeData.movies.then((value) => moviesStream.add(value));
    homeData.fetchGenres();
    homeData.genres.then((value) => genresStream.add(value));
  }
}