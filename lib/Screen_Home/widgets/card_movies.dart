import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Detail/screen_detail.dart';

class CardMovie extends StatelessWidget {
  final String image;
  final int id;
  CardMovie({
    Key key,
    this.image, 
    this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: const Offset(0.0, 6.0),
            blurRadius: 10,
            spreadRadius: 0.0,
          ), //BoxShadow//BoxShadow
        ],
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => ScreenDetail(
                    id: id,
                  )
                )
              );
          },
          child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://image.tmdb.org/t/p/original/$image',
              fit: BoxFit.fitHeight,
              
            ),
          )),
    );
  }
}
