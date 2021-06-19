import 'dart:async';

import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_By_Genres.dart/widgets/icon_action.dart';
import 'package:desafio_2/Pages/Screen_By_Genres.dart/widgets/navegation_button.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'Controller/controller.dart';
import 'widgets/back_poster.dart';
import 'widgets/title_movie.dart';

class ScreenListMovies extends StatelessWidget {
  final ListMoviesController listmovies = ListMoviesController();
  ScreenListMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)!.settings.arguments as int;

    listmovies.loadScreenData(id);

    return Container(
      child: StreamBuilder<Movies>(
          stream: listmovies.moviesStream.stream,
          builder: (context, snapShot) {
            if (snapShot.connectionState != ConnectionState.active) {
              return CircularProgressIndicator();
            }
            if (snapShot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                controller: listmovies.pageController,
                itemBuilder: (context, position) {
                  return Stack(
                      children: [
                        BackPoster(
                          image: snapShot.data!.movies![position].image,
                        ),
                        SafeArea(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TitleMovie(
                                  title: snapShot.data!.movies![position].title,
                                ),
                                NavegationButton(
                                  iconBack: IconAction(
                                    icon: Icons.arrow_back_rounded,
                                    pageAction: () {
                                      
                                      if (listmovies.getPage() == 0) {
                                        Navigator.pop(context);
                                      } else {
                                        listmovies.handlePageFunction(-1);
                                      }
                                      //listmovies.handlePageFunction(-1);
                                    },
                                  ),
                                  iconPlay: IconAction(
                                    icon: Icons.play_arrow_rounded,
                                    pageAction: () {},
                                  ),
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
            });
            }else if (snapShot.hasError) {
              return Text('snapShot.error');
            } else {
              return Container();
            }
          }),
    );
  }
}
