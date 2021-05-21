import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';


class ListMoviesModel{
  Future<Movies> _movies;
  int pageNumber = 0;

  final API api;

  ListMoviesModel({this.api = const API()});


  Future<Movies> get movies => _movies;
  
  fetchMoveis(int id){
    _movies  = api.fetchMovieByGenres(id);
  }

  nextPage(){
    pageNumber++;
  }

  previousPage(){
    pageNumber--;
  }

}