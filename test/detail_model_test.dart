import 'package:flutter_test/flutter_test.dart';
import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Detail/JsonType/movie_detail.dart';
import 'package:movie_desafio/Screen_Detail/models/movie_detail.dart';

void main(){
  test('fetchMovieDetail should fill movies detail variable', (){
    final model = MovieDetailMdoel(api: MockApi());
    model.fetchMovie(15);

    expect(model.movie, completion(isNotNull));

    model.movie.then((movie){
      expect(movie.title, 'teste');
    });
  });
}

class MockApi extends API{
  Future<MoviesDetail> fetchMovieDetail(int id){
    final movie = MoviesDetail(0,'teste','teste','teste','teste',[]);
    return Future.value(movie);
  }
}