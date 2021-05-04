import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/JsonType/movies.dart';

class ListMoviesModel{
  Future<MoviesByCategories> _movies;

  Future<MoviesByCategories> get movies => _movies;
  
  fetchMoveis(){
    _movies  = API().fetchMovieByGenres();
  }

}