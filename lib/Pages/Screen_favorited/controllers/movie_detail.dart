import 'dart:async';
import 'package:desafio_2/Pages/Screen_favorited/models/movie_detail.dart';
import 'package:desafio_2/core/JsonType/movies.dart';


class MovieFavoritedController{
  final _detailData = MovieFavorited();
  
  MovieFavoritedController(){
    _detailData.getMovies();
  }

  StreamController<Movies> movies = StreamController();

  getMovies(){
    _detailData.getMovies();
    _detailData.movies.then((value){
      movies.add(value);
    });
  }
}