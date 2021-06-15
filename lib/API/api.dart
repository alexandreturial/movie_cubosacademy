import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/core/JsonType/movies.dart';

class API{
  final String authority = 'api.themoviedb.org';
  static const queryParameters = {
    'api_key': 'a5bc05fb630c9b7fdc560033345fa13e',
    };

  const API();
  

  Future<Movies> fetchMovie(int page) async {
    var queryParameters = {
    'api_key': 'a5bc05fb630c9b7fdc560033345fa13e',
    'page': '$page'
    } ;

    final response = await http.get(
      Uri.https(authority, '/3/movie/upcoming', queryParameters)
    );
    
    if(response.statusCode == 200){
      return Movies.fromJson(jsonDecode(response.body));
    }else{
      return Future.error('movie not found');
    }
  }

  Future<Genres> fetchGenres() async {
    final response = await http.get(
      Uri.https(authority, '3/genre/movie/list', queryParameters)
    );
    if(response.statusCode == 200){
     
      return Genres.fromJson(jsonDecode(response.body));
    }else{
      return Future.error('categories not found');
    }
  }

  Future<MoviesDetail> fetchMovieDetail(int id) async {
    final response = await http.get(
      Uri.https(authority, '3/movie/$id', queryParameters)
    );
    if(response.statusCode == 200){
     
      return MoviesDetail.fromJson(jsonDecode(response.body));
    }else{
      return Future.error('categories not found');
    }
  }

  Future<Movies> fetchMovieByGenres(int id, int page) async {
    var queryParametersGenres = {
      'api_key': 'a5bc05fb630c9b7fdc560033345fa13e',
      'language':'en-US',
      'include_adult':'false',
      'include_video':'false',
      'page':'$page',
      'with_genres':'$id',
    };

    final response = await http.get(
      Uri.https(authority, '3/discover/movie', queryParametersGenres)
    );
    
    if(response.statusCode == 200){
     
      return Movies.fromJson(jsonDecode(response.body));
    }else{
      return Future.error('categories not found');
    }
  }
}