import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import '../models/model.dart';


class ListMoviesController {
  final _homeData = ListMoviesModel();
  PageController pageController = PageController(initialPage: 0);
  int pageNum = 0;

  Future<Movies> get movies => _homeData.movies;

  StreamController<Movies> moviesStream = StreamController();

  loadScreenData(int id){
    _homeData.fetchMoveis(id);
    _homeData.movies.then((value) => moviesStream.add(value));
  }

  handlePageFunction(int numb){
    //_homeData.movies.then((value) =>  pageNum = value.movies!.length);
   
    if(numb < 0 && _homeData.pageNumber - 1 >= 0){
      _homeData.previousPage();
    }
    if(numb > 0){
       _homeData.nextPage();
    }

    pageController.animateToPage(
      _homeData.pageNumber, duration: Duration(milliseconds: 250), curve: Curves.easeInExpo
    );

    // if(_homeData.pageNumber - 1 >= pageNum){
    //    _homeData.addPaginate();
        
    // }
  }

  int getPage(){
    return _homeData.pageNumber;
  }
  
}