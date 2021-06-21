import 'package:desafio_2/API/api.dart';
import 'package:desafio_2/Pages/Screen_By_Genres.dart/models/model.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {

  test('fetchGenres and fetchMovie should fill movies and genres variable',(){
    final model = ListMoviesModel(api: MockAPI());

    model.fetchMoveis(15);

     model.movies.then((movies){
       expect(movies.movies![0].title, 'title');
     });

  });
}

class MockAPI extends API{
  
  @override
  Future<Movies> fetchMovie(id){
    final List<Movie> movie = [Movie('0','titulo','image','description')];
    final movies = Movies(movies: movie);

    return Future.value(movies);
  }

}


