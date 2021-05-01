import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';

class TitleColumn extends StatelessWidget {
  final String title;
  TitleColumn({
    Key key,
    this.title
  }):super(
    key: key
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
      child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),),
    );
  }
}