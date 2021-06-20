import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/Pages/Screen_Home/models/model.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {

  test('fetchGenres and fetchMovie should fill movies and genres variable',(){
    final model = HomeModel(api: MockAPI());

    model.fetchGenres();
    model.fetchMoveis();

    expect(model.genres, completion(isNotNull));

    model.genres.then((genres) {
      expect(genres.genres![0].name, 'teste');
    });

     model.movies.then((movies){
       expect(movies.movies![0].title, 'title');
     });

  });
}

class MockAPI extends API{

  Future<Genres> fetchGenres(){
    final genre = Genre(0,'teste','teste');
    final genres = Genres([genre]);
   
    return Future.value(genres);
  }

  Future<Movies> fetchMovie(page){
    final movie = Movie('0','title','img','description');
    final movies = Movies(movies: [movie]);

    return Future.value(movies);
  }

}
