import 'package:flutter/material.dart';

import 'package:movie_desafio/Screen_Home/movies.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ListMovies extends StatelessWidget {
  List<Movie> movies;

  ListMovies({
    Key key,
    this.movies,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    print(movies.length);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Coming soon",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.teal
            ),
          ),
          Container(
            height: 450,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return CardMovie(
                    image: movies[index].image,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
