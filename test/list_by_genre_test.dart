// import 'package:flutter_test/flutter_test.dart';
// import 'package:movie_desafio/API/api.dart';
// import 'package:movie_desafio/Pages/Screen_By_Genres.dart/models/model.dart';
// import 'package:movie_desafio/core/JsonType/movies.dart';


// void main() {

//   test('fetchGenres and fetchMovie should fill movies and genres variable',(){
//     final model = ListMoviesModel(api: MockAPI());

//     model.fetchMoveis(15);

//      model.movies.then((movies){
//        expect(movies.movies[0].title, 'title');
//      });

//   });
// }

// class MockAPI extends API{
  
//   @override
//   Future<Movies> fetchMovie(){
//     final movie = Movie(0,'title','img');
//     final movies = Movies([movie]);

//     return Future.value(movies);
//   }

// }


