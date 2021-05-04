import 'package:movie_desafio/Screen_By_Genres.dart/JsonType/movies.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/models/model.dart';


class ListMoviesController {
  final homeData = ListMoviesModel();
  
  Future<MoviesByCategories> get movies => homeData.movies;

  loadScreenData(){
    homeData.fetchMoveis();
  }
  
}