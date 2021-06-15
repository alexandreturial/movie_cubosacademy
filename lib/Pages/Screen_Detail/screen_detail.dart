import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/controllers/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/back_button.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/back_poster.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/descrition.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/list_genres_movie.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/sub_title.dart';
import 'package:desafio_2/Pages/Screen_Detail/widgets/title_movie.dart';
import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ScreenDetail extends StatelessWidget {
  //final int id;

  ScreenDetail({
    Key? key,
    //this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int id = ModalRoute.of(context)!.settings.arguments as int;
    
    MovieDetailController movieController = MovieDetailController();
    movieController.loadScreenData(id);

    double _sigmaX = 0.5; // from 0-10
    double _sigmaY = 0.5; // from 0-10

    return Stack(children: [
      BackPoster(
        id: id,
      ),
      SafeArea(
        child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          color: Colors.black.withOpacity(0.2),
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
                            title: snapShot.data!.title!,
                          ),
                          SubTitle(
                            subTitle: snapShot.data!.date!,
                          )
                        ],
                      ),
                      Container(
                        height: 300,
                        child: SlidingSheet(
                          elevation: 8,
                          color: AppColors.black.withOpacity(0),
                          snapSpec: const SnapSpec(
                            snap: true,
                            snappings: [0.4, 1.0],
                            positioning:
                                SnapPositioning.relativeToAvailableSpace,
                          ),
                          builder: (context, state) {
                            return Container(
                              height: 300,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Description(
                                    about:
                                      "${snapShot.data!.overview!.substring(0, 150)}..."
                                  ),
                                  ListGenresMovie(
                                    genres: snapShot.data!.genres!,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      BackButtonWidget(),
                                      GestureDetector(
                                        onTap: (){
                                          movieController.saveMovie(
                                            snapShot.data!.title!, 
                                            snapShot.data!.image!, 
                                            snapShot.data!.id!
                                          );
                                        },
                                        child: Icon(
                                          Icons.star,
                                          color: AppColors.grey,
                                          size: 30,
                                          ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else if (snapShot.hasError) {
                  return Text('snapShot.error');
                } else {
                  return Container();
                }
              }),
        ),
      ))
    ]);
  }
}
