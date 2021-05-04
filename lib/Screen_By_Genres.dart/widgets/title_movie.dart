import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class TitleMovie extends StatelessWidget {
  final String title;
  TitleMovie({
    Key key,
    this.title
  }):super();
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.title25,
    );
  }
}
