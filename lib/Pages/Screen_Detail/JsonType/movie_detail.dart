class MoviesDetail {
  int id = 0;
  String title = '';
  String date = '';
  String overview = '';
  String image = '';
  List<Genre> genres = [Genre(0,'')];

  MoviesDetail(
    //  this.id,
    //  this.title,
    //  this.date,
    //  this.overview,
    //  this.image,
    //  this.genres,
  );

  MoviesDetail.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    date = json['release_date'];
    overview = json['overview'] == "" ? "this movie have not description" : json['overview'];
    image = json['backdrop_path'];

    var genresList = json['genres'] as List;

    genres = genresList.map((item){
        return Genre.fromJson(item);
      }).toList();
    }
}

class Genre {
  int id = 0;
  String name = ''; 

  Genre(
    this.id,
    this.name,
  );

  Genre.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}
