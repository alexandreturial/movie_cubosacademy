import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class SubTitle extends StatelessWidget {
  final String subTitle;
  SubTitle({
    Key? key, 
    required this.subTitle,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: AppTextStyles.body,
    );
  }
}