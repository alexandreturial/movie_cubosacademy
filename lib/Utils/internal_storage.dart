import 'package:desafio_2/core/JsonType/movies.dart';

abstract class InternalStorageAdpter{
  void saveMovies(String title, String image, int id);
  
  Future<Movies> getMovies();

  void deleteMovies(int movieId);
}