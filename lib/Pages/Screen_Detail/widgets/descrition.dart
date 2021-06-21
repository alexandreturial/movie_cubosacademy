import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class Description extends StatelessWidget {
  final String about;
  final int sized;
  Description({
    Key? key, 
    required this.about, 
    required this.sized,
  }):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: sized,
      child: Text.rich(
        TextSpan(
          text: about.substring(0, 1), 
          style:AppTextStyles.bodyBoldPink, 
          children: [
          TextSpan(
            text: about.substring(1),
            style: AppTextStyles.body15,
          ),
        ]),
      )
,
    );
  }
}
