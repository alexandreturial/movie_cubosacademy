import 'package:desafio_2/Utils/internal_storage.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart';

class SQLAdapter extends InternalStorageAdpter{
  static Database? _database;

   Future<Database> get database async{
      if(_database != null){
        return _database!;
      }

      _database = await initDB();
      print(_database?.path);
      return _database!;
    }

  initDB() async{
    String path = join(await getDatabasesPath(), 'movies_database.db');

    return await openDatabase(
      path, 
      onCreate: (db, version){
        return db.execute("CREATE TABLE Movies(title TEXT, image TEXT, id TEXT)");
      },
      version: 1);
  }

  @override
  Future<Movies> getMovies() async{
    final Database db = await database;
    
    var response = await db.query(
      'Movies', 
      columns: ['title, image, id'],
      orderBy: 'rowid DESC',
    );

    if(response.isNotEmpty){
      final movies = Movies.fromMap(response);
      return movies;
    }else{
      Movies movies = Movies();
      return movies;
    }
  }

  @override
  void saveMovies(String title, String image, int id) async{
    final Database db = await database;
    var movies = {
      'title': title,
      'image': image,
      'id': id,
    };
    await db.insert('Movies', movies);
    print('Movies salvo');
  }

  void deleteMovies(int movieId) async{
    final Database db = await database;
    // db.rawDelete(
    //   'DELETE FROM Movies WHERE rowid = (SELECT MAX(rowid) FROM Movies)'
    // );
    
    db.delete(
      'Movies',
      where: 'rowid = ?',
      whereArgs: [movieId]
    );
  }
}