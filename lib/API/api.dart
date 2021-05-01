import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';

import 'package:movie_desafio/Screen_Home/JsonType/movies.dart';

class API{
  var authority = 'api.themoviedb.org';
  var queryParameters = {
  'api_key': 'a5bc05fb630c9b7fdc560033345fa13e'
  };


  Future<Movies> fetchMovie() async {

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
}