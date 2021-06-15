import 'dart:async';

import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/Pages/Screen_Home/models/model.dart';
import 'package:desafio_2/core/JsonType/movies.dart';


class HomeViewModel {
  final homeData = HomeModel();
  
  //Future<Movies> get movies => homeData.movies;
  //Future<Genres> get genres => homeData.genres;
  
  StreamController<Movies> moviesStream = StreamController();
  StreamController<Genres> genresStream = StreamController();

  void setPage() async{
    await addPage();
  }

  void loadScreenData(){
    homeData.fetchMoveis();
    homeData.movies.then((value) => moviesStream.add(value));

    homeData.fetchGenres();
    homeData.genres.then((value) => genresStream.add(value));
  }

  addPage(){
    homeData.page += 1; 
    homeData.fetchMoveis();
    homeData.movies.then(
      (value){ 
        moviesStream.add(value);
      }
    );
  }
}