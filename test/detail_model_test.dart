import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/models/movie_detail.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('fetchMovieDetail should fill movies detail variable', (){
    final model = MovieDetailMdoel(api: MockApi());
    model.fetchMovie('15');

    expect(model.movie, completion(isNotNull));

    model.movie.then((movie){
      expect(movie.title, '');
    });
  });
}

class MockApi extends API{
  Future<MoviesDetail> fetchMovieDetail(String id){
    final MoviesDetail movie = MoviesDetail();
    return Future.value(movie);
  }
}