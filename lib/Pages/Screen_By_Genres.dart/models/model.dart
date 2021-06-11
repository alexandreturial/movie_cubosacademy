import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/core/JsonType/movies.dart';


class ListMoviesModel{
  Future<Movies>? _movies;
  int pageNumber = 0;

  final API api;

  ListMoviesModel({this.api = const API()});


  Future<Movies> get movies => _movies!;
  
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