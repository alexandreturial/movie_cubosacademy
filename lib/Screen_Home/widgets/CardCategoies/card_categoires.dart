import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/screen_list.dart';
import 'package:movie_desafio/Utils/get_color.dart';
import 'package:movie_desafio/core/app_colors.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class CardCategories extends StatelessWidget {
  final String name;
  CardCategories({
    Key key, 
    this.name
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => ScreenListMovies()
                )
              );
          },
          child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorGenres.getColorType(type: name),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: AppColors.black,
                offset: const Offset(0.0, 6.0),
                blurRadius: 10,
                spreadRadius: 0.0,
              ), //BoxShadow//BoxShadow
            ],
          ),
          child: Text(
            name,
            style: AppTextStyles.body,
          )),
    );
  }
}
