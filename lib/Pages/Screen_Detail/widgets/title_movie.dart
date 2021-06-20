import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class TitleMovie extends StatelessWidget {
  final String title;
  TitleMovie({
    Key? key,
    required this.title
  }):super();
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.title25,
      textAlign: TextAlign.center
    );
  }
}
