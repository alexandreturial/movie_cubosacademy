import 'package:desafio_2/Sql/sql_adapter.dart';
import 'package:desafio_2/Utils/internal_storage.dart';
import 'package:desafio_2/core/JsonType/movies.dart';

class MovieFavorited{
  Future<Movies>? _movies;
  final InternalStorageAdpter internalStorage;

  MovieFavorited({InternalStorageAdpter? intenralStorageAdapter})
  : internalStorage = intenralStorageAdapter ?? SQLAdapter();

  Future<Movies> get movies => _movies!;

  void getMovies(){
    _movies = internalStorage.getMovies();
  }
}