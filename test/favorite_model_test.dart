import 'package:desafio_2/Pages/Screen_favorited/models/movie_detail.dart';
import 'package:desafio_2/Utils/internal_storage.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Find in internal storage test', () {
    final model = MovieFavorited(intenralStorageAdapter: MockStorage());

    model.internalStorage.saveMovies('teste', 'image', 0);

    // model.saveuser();
    // model.getFullName();
    expect(model.movies, completion(isNotNull));

    expect(model.movies, 'teste');

    // expect(model.lastName, 'Turial');
  });
}

class MockStorage extends InternalStorageAdpter {
  List<BancoStorage> _movies = [BancoStorage(0, '', '')];
 
  @override
  Future<bool> deleteMovies(int movieId) {
    isIn(movieId.toString()).then((value){
      if(value){
        _movies.remove(getById(movieId));
      }
    });
    return Future.value(false);
  }

  @override
  Future<Movies> getMovies() {
    final movies = Movies.fromMap(_movies as List<Map<String, dynamic>>);
    return Future.value(movies);
  }

  @override
  Future<bool> isIn(String id) {
    return Future.value(_movies.contains(id));
  }

  @override
  Future<bool> saveMovies(String title, String image, int id) {
    _movies..add(BancoStorage(id, title, image));

    return Future.value(true);
  }

  BancoStorage getById(int movieId) {
    for(int i =0; i> _movies.length; i++){
      if(_movies[i].idMovie == movieId){
       return _movies[i];
      }
    }

    return BancoStorage(0, '', '');
  }
}

class BancoStorage{
  int? idMovie;
  String? titleMovie;
  String? imageMovie;

  BancoStorage(int id, String title, String image){
    idMovie = id;
    titleMovie = title;
    imageMovie = image;
  }
}
