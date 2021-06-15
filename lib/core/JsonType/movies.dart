class Movies{
 
  List<Movie>? movies;
  //Movies({List<Movie>? movies}) : this.movies  = movies ?? [new Movie(0, '', '')];
  Movies();
  Movies.fromJson(Map<String, dynamic> json){

  var movieList = json['results'] as List;

    movies = movieList.map((item){
      return Movie.fromJson(item);
    }).toList();

  }

  void addMovies(List<Movie> values){
    if(movies == null){
      movies = values;
    }else{
      movies!..addAll(values);
    }
    
  }

  Movies.fromMap(List<Map<String, dynamic>> json){

    movies = json.map((item){
      return Movie.fromMap(item);
    }).toList();
  }
  
}

class Movie{
  int id = 0;
  String title = '';
  String image = '';
  String description = '';

  Movie(
    this.id,
    this.title,
    this.image,
    this.description,
  );

  Movie.fromJson(Map<String, dynamic> json){
   
    id = json['id'];
    title = json['title'];
    image = json['poster_path'];
  }

  Movie.fromMap(Map<String, dynamic> map) :
    id = map['id'],
    title = map['title'],
    image = map['image'];
    

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'title' : title,
      'image': image,
    };
  }
}
