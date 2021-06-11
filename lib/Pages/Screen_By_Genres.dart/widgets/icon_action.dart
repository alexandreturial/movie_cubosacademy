import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_colors.dart';

class IconAction extends StatelessWidget {
  final IconData icon;
  final Function pageAction;
  IconAction({
    Key? key, 
    required this.icon, 
    required this.pageAction
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        child: Icon(
          icon,
          size: 35,
          color: AppColors.white,
        ),
        onTap: (){pageAction();},
      );
  }
}