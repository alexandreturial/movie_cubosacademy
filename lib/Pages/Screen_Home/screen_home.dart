import 'package:desafio_2/Common/AppBar/app_bar.dart';
import 'package:desafio_2/Common/NavigationBar/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Home/Controller/controller.dart';
import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/Pages/Screen_Home/widgets/ListCategories/list_categories.dart';
import 'package:desafio_2/Pages/Screen_Home/widgets/ListMovies/list_movies.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:desafio_2/core/app_colors.dart';

class ScreenHome extends StatelessWidget {
  final HomeViewModel controller = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    controller.loadScreenData();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 5),
        color: AppColors.backgorund,
        height: MediaQuery.of(context).size.height,
        child: DraggableScrollableSheet(
            initialChildSize: 1,
            minChildSize: 1,
            maxChildSize: 1,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                dragStartBehavior: DragStartBehavior.start,
                child: Column(
                  children: [
                    AppBartWidget(),
                    StreamBuilder<Movies>(
                        stream: controller.moviesStream.stream,
                        builder: (context, snapShot) {
                          if (snapShot.connectionState !=
                              ConnectionState.active) {
                            return CircularProgressIndicator();
                          }
                          if (snapShot.hasData) {
                            return ListMovies(
                              movies: snapShot.data!.movies!,
                              controller: controller,
                            );
                          } else if (snapShot.hasError) {
                            return Text('snapShot.error');
                          } else {
                            return Container();
                          }
                        }),
                    StreamBuilder<Genres>(
                        stream: controller.genresStream.stream,
                        builder: (context, snapShot) {
                          if (snapShot.connectionState !=
                              ConnectionState.active) {
                            return CircularProgressIndicator();
                          }
                          if (snapShot.hasData) {
                            return ListCategories(
                                genres: snapShot.data!.genres);
                          } else if (snapShot.hasError) {
                            return Text('snapShot.error');
                          } else {
                            return Container();
                          }
                        }),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
