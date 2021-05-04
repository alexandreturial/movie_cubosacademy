class MoviesDetail{
  int id;
  String title;
  String date;
  String overview;
  String image;

  MoviesDetail.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    date = json['release_date'];
    overview = json['overview'];
    image = json['backdrop_path'];
  }
}