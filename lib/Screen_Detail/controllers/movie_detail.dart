import 'package:movie_desafio/Screen_Detail/JsonType/movie_detail.dart';
import 'package:movie_desafio/Screen_Detail/models/movie_detail.dart';

class MovieDetailController{
  final detailData = MovieDetailMdoel();

  Future<MoviesDetail> get movie => detailData.movie;

  loadScreenData(int id){
    detailData.fetchMovie(id);
   
  }
}