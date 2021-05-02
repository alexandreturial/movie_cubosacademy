import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class Description extends StatelessWidget {
  final String about;
  Description({
    Key key, 
    this.about,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        about,
        style: AppTextStyles.body,
      ),
    );
  }
}
