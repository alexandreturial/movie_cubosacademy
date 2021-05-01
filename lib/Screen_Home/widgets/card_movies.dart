import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Detail/screen_detail.dart';

class CardMovie extends StatelessWidget {
  final String image;

  CardMovie({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: const Offset(0.0, 6.0),
            blurRadius: 10,
            spreadRadius: 0.0,
          ), //BoxShadow//BoxShadow
        ],
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ScreenDetail()));
          },
          child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://image.tmdb.org/t/p/w300/$image',
              fit: BoxFit.fitHeight,
              
            ),
          )),
    );
  }
}
