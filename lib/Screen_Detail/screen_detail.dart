import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Detail/widgets/back_button.dart';
import 'package:movie_desafio/Screen_Detail/widgets/back_poster.dart';
import 'package:movie_desafio/Screen_Detail/widgets/descrition.dart';
import 'package:movie_desafio/Screen_Detail/widgets/title_movie.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class ScreenDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _sigmaX = 1.0; // from 0-10
    double _sigmaY = 1.0; // from 0-10
    
    return Stack(children: [
      BackPoster(
        image: "https://image.tmdb.org/t/p/original/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg",
      ),
      SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
          child: Container(
            padding: EdgeInsets.all(15),
            color: Colors.black.withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleMovie(
                title: "KONG vs GOZILLA",
              ),
              Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Description(
                      about: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                    ),
                    BackButtonWidget()
                    
                  ],
                ),
              ),
             
            ],
      ),
          ),
        ))
    ]);
  }
}
