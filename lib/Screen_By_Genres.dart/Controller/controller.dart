import 'package:flutter/cupertino.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';
import '../models/model.dart';


class ListMoviesController {
  final homeData = ListMoviesModel();
  PageController pageController = PageController(initialPage: 0);
  
  Future<Movies> get movies => homeData.movies;

  loadScreenData(int id){
    homeData.fetchMoveis(id);
  }

  handlePageFunction(int numb){
    if(numb < 0 && homeData.pageNumber - 1 >= 0){
      homeData.previousPage();
    }
    if(numb > 0){
       homeData.nextPage();
    }
    pageController.animateToPage(
      homeData.pageNumber, duration: Duration(milliseconds: 250), curve: Curves.easeInExpo
    );
  }
  
}