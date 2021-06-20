import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Utils/get_color.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class ListGenresMovie extends StatelessWidget {
  final List<Genre> genres;

  ListGenresMovie({
    Key? key,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: ColorGenres.getColorType(type: genres[index].name),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "${genres[index].name}",
              style: AppTextStyles.body15,
            ),
          );
        },
      ),
    );
  }
}
