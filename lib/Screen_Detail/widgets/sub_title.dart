import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class SubTitle extends StatelessWidget {
  final String subTitle;
  SubTitle({
    Key key, 
    this.subTitle,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: AppTextStyles.body,
    );
  }
}