import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Detail/JsonType/movie_detail.dart';
import 'package:movie_desafio/Screen_Detail/controllers/movie_detail.dart';
import 'package:movie_desafio/Screen_Detail/widgets/back_button.dart';
import 'package:movie_desafio/Screen_Detail/widgets/back_poster.dart';
import 'package:movie_desafio/Screen_Detail/widgets/descrition.dart';
import 'package:movie_desafio/Screen_Detail/widgets/sub_title.dart';
import 'package:movie_desafio/Screen_Detail/widgets/title_movie.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class ScreenDetail extends StatelessWidget {
  final int id;

  ScreenDetail({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieDetailController movieController = MovieDetailController();
    movieController.loadScreenData(id);

    double _sigmaX = 1.0; // from 0-10
    double _sigmaY = 1.0; // from 0-10

    return Stack(children: [
      BackPoster(
        id: id,
      ),
      SafeArea(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.black.withOpacity(0.4),
          child: FutureBuilder<MoviesDetail>(
              future: movieController.movie,
              builder: (context, snapShot) {
                if (snapShot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TitleMovie(
                            title: snapShot.data.title,
                          ),
                          SubTitle(
                            subTitle: snapShot.data.date,
                          )
                        ],
                      ),
                      Container(
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Description(
                              about: "${snapShot.data.overview.substring(0, 150)}..."
                            ),
                            BackButtonWidget()
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
              }),
        ),
      ))
    ]);
  }
}
