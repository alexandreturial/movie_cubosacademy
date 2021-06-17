import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Sql/sql_adapter.dart';
import 'package:desafio_2/Utils/internal_storage.dart';

class MovieDetailMdoel{
  Future<MoviesDetail>? _movie;
  Future<bool> _isIn = Future.value(false);
  final API api;
  final InternalStorageAdpter internalStorage;

  MovieDetailMdoel({this.api = const API(), InternalStorageAdpter? intenralStorageAdapter})
  : internalStorage = intenralStorageAdapter ?? SQLAdapter();

  Future<MoviesDetail>? get movie => _movie;
  Future<bool> get isIn => _isIn;

  fetchMovie(String id){
    _movie  = api.fetchMovieDetail(id);
    _isIn = internalStorage.isIn(id);
  }

  void saveMovie(String title, String image, int id){
    internalStorage.saveMovies(title, image, id);
  }
}