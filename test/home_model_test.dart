import 'package:flutter_test/flutter_test.dart';
import 'package:movie_desafio/API/api.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/models/model.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';


void main() {

  test('fetchGenres and fetchMovie should fill movies and genres variable',(){
    final model = HomeModel(api: MockAPI());

    model.fetchGenres();
    model.fetchMoveis();

    expect(model.genres, completion(isNotNull));

    model.genres.then((genres) {
      expect(genres.genres[0].name, 'teste');
    });

     model.movies.then((movies){
       expect(movies.movies[0].title, 'title');
     });

  });
}

class MockAPI extends API{

  Future<Genres> fetchGenres(){
    final genre = Genre(0,'teste','teste');
    final genres = Genres([genre]);
   
    return Future.value(genres);
  }

  Future<Movies> fetchMovie(){
    final movie = Movie(0,'title','img');
    final movies = Movies([movie]);

    return Future.value(movies);
  }

}
