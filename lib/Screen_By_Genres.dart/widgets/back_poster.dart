import 'dart:ui';

import 'package:flutter/material.dart';

class BackPoster extends StatelessWidget {
  final String image;
  BackPoster({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _sigmaX = 0.5; // from 0-10
    double _sigmaY = 0.5; // from 0-10

    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          child: Container(
            child: Image.network(
              "https://image.tmdb.org/t/p/original/$image",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
          child: Container(
            color: Colors.black.withOpacity(0.3),
          )
        )
      ],
    );
  }
}
