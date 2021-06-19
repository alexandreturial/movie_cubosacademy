import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/core/JsonType/movies.dart';

class HomeModel{
  Movies moveisList = new Movies();
  Future<Movies>? _movies;
  Future<Genres>? _genres;
  int page = 1;

  final API api;
  
  HomeModel({this.api = const API()});

  Future<Movies> get movies => _movies!;

  void setPage(Function addPage){
    page = addPage();
  }

  fetchMoveis(){
    //_movies = api.fetchMovie(page);

    _movies = api.fetchMovie(page).then((value){
      if(value.movies != null){
        moveisList.addMovies(value.movies!); 
      }
      return Future.value(moveisList);
    });
  }

  Future<Genres> get genres => _genres!;
  fetchGenres(){
    _genres  = api.fetchGenres();
  }
}