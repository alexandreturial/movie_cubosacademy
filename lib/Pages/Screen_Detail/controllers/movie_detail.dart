import 'dart:async';

import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/models/movie_detail.dart';


class MovieDetailController{
  final _detailData = MovieDetailMdoel();

  Future<MoviesDetail> get movie => _detailData.movie!;
  
  Future<bool> get isIn => _detailData.isIn;

  StreamController<bool> isInStream = StreamController();

  loadScreenData(String id){
    _detailData.fetchMovie(id);
    loadStream();
    
  }

  handleMovie(String title, String image, int id){
    isIn.then((value){
      if(value){
        removeMovie(id);
      }else{
        saveMovie(title, image, id);
      }
    });
  }

  saveMovie(String title, String image, int id){
    _detailData.saveMovie(title, image, id);
    loadStream();
  }

  removeMovie(int id){
    _detailData.removeMovie(id);
    loadStream();
  }

  loadStream(){
    _detailData.isIn.then((value){
      isInStream.add(value);
    });
  }
}