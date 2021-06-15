import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/core/JsonType/movies.dart';


class ListMoviesModel{
  Movies moveisList = new Movies();
  Future<Movies>? _movies;
  int pageNumber = 0;
  int paginate = 1;

  final API api;

  ListMoviesModel({this.api = const API()});


  Future<Movies> get movies => _movies!;
  
  fetchMoveis(int id){
    //_movies  = api.fetchMovieByGenres(id);

     _movies = api.fetchMovieByGenres(id, paginate).then((value){
      if(value.movies != null){
        moveisList.addMovies(value.movies!); 
      }
      return Future.value(moveisList);
    });
  }

  nextPage(){
    pageNumber++;
  }

  previousPage(){
    pageNumber--;
  }

  addPaginate(){
    paginate++;
  }

}