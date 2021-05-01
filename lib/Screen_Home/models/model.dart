import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/JsonType/movies.dart';

class HomeModel{
  Future<Movies> _movies;
  Future<Genres> _genres;
  
  Future<Movies> get movies => _movies;
  fetchMoveis(){
    _movies  = API().fetchMovie();
  }

  Future<Genres> get genres => _genres;
  fetchGenres(){
    _genres  = API().fetchGenres();
  }
}