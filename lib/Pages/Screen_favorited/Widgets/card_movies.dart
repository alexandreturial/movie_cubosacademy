import 'dart:ui';

import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class CardMovies extends StatelessWidget {
  final String image;
  final String title;
  const CardMovies({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 400,
            color: AppColors.red,
            child: Image.network(
              'https://image.tmdb.org/t/p/w500/$image',
              height: 400,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '$title',
              style: AppTextStyles.bodyBold,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
