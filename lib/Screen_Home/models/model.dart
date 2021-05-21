import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';

class HomeModel{
  Future<Movies> _movies;
  Future<Genres> _genres;

  final API api;
  
  HomeModel({this.api = const API()});

  Future<Movies> get movies => _movies;

  fetchMoveis(){
    _movies  = api.fetchMovie();
  }

  Future<Genres> get genres => _genres;
  fetchGenres(){
    _genres  = api.fetchGenres();
  }
}