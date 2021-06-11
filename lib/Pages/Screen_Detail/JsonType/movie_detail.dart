class MoviesDetail {
  int? id;
  String? title;
  String? date;
  String? overview;
  String? image;
  List<Genre>? genres;

  MoviesDetail(
    this.id,
    this.title,
    this.date,
    this.overview,
    this.image,
    this.genres,
  );

  MoviesDetail.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    date = json['release_date'];
    overview = json['overview'];
    image = json['backdrop_path'];

    var genresList = json['genres'] as List;

    genres = genresList.map((item){
        return Genre.fromJson(item);
      }).toList();
    }
}

class Genre {
  int? id;
  String? name; 

  Genre(
    this.id,
    this.name,
  );

  Genre.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
  }
}
