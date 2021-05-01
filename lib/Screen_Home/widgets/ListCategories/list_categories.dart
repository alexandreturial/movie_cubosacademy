import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Home/movies.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ListCategories extends StatelessWidget {
   List<Movie> movies;

  ListCategories({
    Key key,
    this.movies,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("recent"),
          Container(
            height: 400,
            child: GridView.builder(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return CardMovie(
                  image: movies[0].image,
                );
              }),
          ),
        ],
      ),
    );
  }
}