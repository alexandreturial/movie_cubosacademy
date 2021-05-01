import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_desafio/AppBar/app_bar.dart';
import 'package:movie_desafio/Screen_Home/Controller/controller.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/JsonType/movies.dart';
import 'package:movie_desafio/Screen_Home/widgets/ListCategories/list_categories.dart';
import 'package:movie_desafio/Screen_Home/widgets/ListMovies/list_movies.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ScreenHome extends StatelessWidget {
  final  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    controller.loadScreenData();

    return Scaffold(
        appBar: AppBartWidget(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: DraggableScrollableSheet(
              initialChildSize: 1,
              minChildSize: 1,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                        controller: scrollController,
                        dragStartBehavior: DragStartBehavior.start,
                        child: Column(
                          children: [
                            FutureBuilder<Movies>(
                              future: controller.movies,
                              builder: (context, snapShot) {
                                if (snapShot.hasData) {
                                  return   ListMovies(movies: snapShot.data.movies);
                                }else if (snapShot.hasError) {
                                  return Text(snapShot.error);
                                } else {
                                  return Container();
                                }
                            }
                            ),
                            FutureBuilder<Genres>(
                              future: controller.genres,
                              builder: (context, snapShot) {
                                if (snapShot.hasData) {
                                  return ListCategories(genres: snapShot.data.genres);
                                }else if (snapShot.hasError) {
                                  return Text(snapShot.error);
                                } else {
                                  return Container();
                                }
                            }
                            ),
                          ],
                        ),
                      );
              }),
        ));
  }
}
