import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';

class MovieDetailMdoel{
  Future<MoviesDetail>? _movie;
  final API api;

  MovieDetailMdoel({this.api = const API()});

  Future<MoviesDetail>? get movie => _movie;

  fetchMovie(int id){
    _movie  = api.fetchMovieDetail(id);
  }
}