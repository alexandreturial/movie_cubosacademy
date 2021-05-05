import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';

class IconAction extends StatelessWidget {
  final IconData icon;
  final Function pageAction;
  IconAction({
    Key key, 
    this.icon, 
    this.pageAction
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        child: Icon(
          icon,
          size: 35,
          color: AppColors.white,
        ),
        onTap: pageAction,
      );
  }
}