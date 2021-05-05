import 'package:movie_desafio/API/api.dart';

import '../JsonType/movies.dart';

class ListMoviesModel{
  Future<MoviesByCategories> _movies;
  int pageNumber = 0;


  Future<MoviesByCategories> get movies => _movies;
  
  fetchMoveis(int id){
    _movies  = API().fetchMovieByGenres(id);
  }

  nextPage(){
    pageNumber++;
  }

  previousPage(){
    pageNumber--;
  }

}