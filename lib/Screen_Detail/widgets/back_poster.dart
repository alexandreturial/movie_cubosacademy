import 'package:flutter/material.dart';

class BackPoster extends StatelessWidget {
  final String image;
  BackPoster({
    Key key,
    this.image
  }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Image.network(
            image,
            fit: BoxFit.fitHeight,
          ),
        ),
      );
  }
}