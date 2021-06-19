import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import '../models/model.dart';


class ListMoviesController {
  final _homeData = ListMoviesModel();
  PageController pageController = PageController(initialPage: 0);
  int pageNum = 0;
  int idMovie = 0;

  Future<Movies> get movies => _homeData.movies;

  StreamController<Movies> moviesStream = StreamController();

  loadScreenData(int id){
    this.idMovie = id;
    _homeData.fetchMoveis(id);
    _homeData.movies.then((value){
      pageNum = value.movies!.length;
      moviesStream.add(value);
    });
  }

  handlePageFunction(int numb){
   
   
    if(numb < 0 && _homeData.pageNumber - 1 >= 0){
      _homeData.previousPage();
    }
    if(numb > 0 && (pageNum - 1) > _homeData.pageNumber){
      _homeData.nextPage();
      print(_homeData.pageNumber);

      if((pageNum - 5) == _homeData.pageNumber){
        _homeData.fetchMoveis(this.idMovie);

        _homeData.movies.then((value){

          pageNum = value.movies!.length;
          moviesStream.add(value);

        });
      }
    }

    pageController.animateToPage(
      _homeData.pageNumber, duration: Duration(milliseconds: 250), curve: Curves.easeInExpo
    );
  }

  int getPage(){
    return _homeData.pageNumber;
  }
  
}