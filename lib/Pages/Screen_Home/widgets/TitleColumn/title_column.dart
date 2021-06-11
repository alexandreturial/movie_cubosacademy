import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class TitleColumn extends StatelessWidget {
  final String title;
  TitleColumn({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          text: title.substring(0, 1), style: 
          AppTextStyles.bodyBoldPink25, 
          children: [
          TextSpan(
            text:title.substring(1),
            style:  AppTextStyles.body,
          ),
        ]),
      ),
    );
  }
}
