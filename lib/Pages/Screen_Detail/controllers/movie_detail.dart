import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/models/movie_detail.dart';


class MovieDetailController{
  final _detailData = MovieDetailMdoel();

  Future<MoviesDetail>? get movie => _detailData.movie;

  loadScreenData(int id){
    _detailData.fetchMovie(id);
  }

  void saveMovie(String title, String image, int id){
   
    _detailData.saveMovie(title, image, id);
   
  }
}