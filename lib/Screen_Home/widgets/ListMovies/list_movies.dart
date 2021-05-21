import 'package:flutter/material.dart';

import 'package:movie_desafio/Screen_Home/widgets/TitleColumn/title_column.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';

class ListMovies extends StatelessWidget {
  final List<Movie> movies;

  ListMovies({
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
          TitleColumn(
            title: "Coming soon",
          ),
          Container(
            height: 450,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return CardMovie(
                    image: movies[index].image,
                    id: movies[index].id,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
