import 'dart:ui';

import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class CardMovies extends StatelessWidget {
  final String image;
  final String title;
  const CardMovies({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sigmaX = 0.8; // from 0-10
    double _sigmaY = 0.8; // from 0-10
    return Stack(
      children: [
       BackdropFilter(
        filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
          child: Image.network(
            'https://image.tmdb.org/t/p/w500/$image',
            height: 400,
            fit: BoxFit.fitHeight,
            alignment: Alignment.centerRight,
          ),
        ),
        Text(
          '$title',
          style: AppTextStyles.bodyBold,
        ),
      ],
    );
  }
}
