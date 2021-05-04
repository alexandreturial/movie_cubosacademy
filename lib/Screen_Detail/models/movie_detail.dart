import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Detail/JsonType/movie_detail.dart';

class MovieDetailMdoel{
  Future<MoviesDetail> _movie;


  Future<MoviesDetail> get movie => _movie;

  fetchMovie(int id){
    _movie  = API().fetchMovieDetail(id);
  }
}