import 'package:movie_desafio/Screen_Home/models/model.dart';
import 'package:movie_desafio/Screen_Home/movies.dart';


class MovieController {
  final moviesList = MovieModel();
  
  Future<Movies> get movies => moviesList.movies;

  getmoviesList(){
    moviesList.fetchMoveis();
  }
  
}