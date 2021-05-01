import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Home/movies.dart';

class MovieModel{
  Future<Movies> _movies;

  Future<Movies> get movies => _movies;

  fetchMoveis(){
    _movies  = API().fetchMovie();
  }
}