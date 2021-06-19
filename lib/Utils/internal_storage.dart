import 'package:desafio_2/core/JsonType/movies.dart';

abstract class InternalStorageAdpter{
  Future<bool> saveMovies(String title, String image, int id);
  
  Future<Movies> getMovies();

  Future<bool> deleteMovies(int movieId);

  Future<bool> isIn(String id);
}