class Genres{

  List<Genre> genres;

  Genres.fromJson(Map<String, dynamic> json){

  var genresList = json['genres'] as List;

  genres = genresList.map((item){
      return Genre.fromJson(item);
    }).toList();
  }
}

class Genre{
  int id;
  String name;
  String image;

  Genre.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}