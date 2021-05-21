import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/icon_action.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/navegation_button.dart';
import 'package:movie_desafio/core/JsonType/movies.dart';
import 'Controller/controller.dart';
import 'widgets/back_poster.dart';
import 'widgets/title_movie.dart';

class ScreenListMovies extends StatelessWidget {
  final ListMoviesController listmovies = ListMoviesController();
  final int id;
  ScreenListMovies({
    Key key, 
    this.id,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    listmovies.loadScreenData(id);
    return Container(
      child: PageView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          controller: listmovies.pageController,
          itemBuilder: (context, position) {
            return FutureBuilder<Movies>(
                future: listmovies.movies,
                builder: (context, snapShot) {
                  if (snapShot.hasData) {
                    return Stack(
                      children: [
                        BackPoster(
                          image: snapShot.data.movies[position].image,
                        ),
                        SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TitleMovie(
                                  title: snapShot.data.movies[position].title,
                                ),
                                NavegationButton(
                                  iconBack: IconAction(
                                    icon: Icons.arrow_back_rounded,
                                    pageAction: () {
                                      listmovies.handlePageFunction(-1);
                                    },
                                  ),
                                  iconPlay: IconAction(
                                      icon: Icons.play_arrow_rounded),
                                  iconNext: IconAction(
                                    icon: Icons.arrow_forward_rounded,
                                    pageAction: () {
                                      listmovies.handlePageFunction(1);
                                    },
                                  ),
                                )
                              ],
                            ),
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
