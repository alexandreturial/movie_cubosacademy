import 'package:flutter/material.dart';
import 'package:desafio_2/Utils/get_color.dart';
import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';


class CardCategories extends StatelessWidget {
  final String? name;
  final int? id;
  
  CardCategories({
    Key? key, 
    this.name, 
    this.id
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              'genremovies',
              arguments: id
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
            name?? '',
            style: AppTextStyles.body,
          )),
    );
  }
}
