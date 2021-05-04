import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/Controller/controller.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/JsonType/movies.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/back_poster.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/sub_title.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/title_movie.dart';

class ScreenListMovies extends StatelessWidget {
  final ListMoviesController listmovies = ListMoviesController();

  @override
  Widget build(BuildContext context) {
    listmovies.loadScreenData();

    return Container(
     
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          // controller: controller.,
          itemBuilder: (context, position) {
            return FutureBuilder<MoviesByCategories>(
                future: listmovies.movies,
                builder: (context, snapShot) {
                  if (snapShot.hasData) {
                    return Stack(
                      children: [
                        BackPoster(
                          image: snapShot.data.movies[position].image,
                        ),
                        SafeArea(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TitleMovie(
                                title: snapShot.data.movies[position].title,
                              ),
                              SubTitle(
                                subTitle: snapShot.data.movies[position].title,
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  } else if (snapShot.hasError) {
                    return Text(snapShot.error);
                  } else {
                    return Container();
                  }
                });
          }),
    );
  }
}
