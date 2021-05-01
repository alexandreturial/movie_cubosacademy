import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/models/model.dart';
import 'package:movie_desafio/Screen_Home/JsonType/movies.dart';


class HomeController {
  final homeData = HomeModel();
  
  Future<Movies> get movies => homeData.movies;
  Future<Genres> get genres => homeData.genres;

  loadScreenData(){
    homeData.fetchMoveis();
    homeData.fetchGenres();
  }
}