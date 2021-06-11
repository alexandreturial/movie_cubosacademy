class Movies{
 
  List<Movie> movies = [ new Movie(0, '', '')];
  Movies(this.movies);

  Movies.fromJson(Map<String, dynamic> json){

  var movieList = json['results'] as List;

  movies = movieList.map((item){
      return Movie.fromJson(item);
    }).toList();
  }

}
class Movie{
  int id = 0;
  String title = '';
  String image = '';

  Movie(
    this.id,
    this.title,
    this.image,
  );

  Movie.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    image = json['poster_path'];
  }
}
