import 'package:desafio_2/core/app_images.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  final String? image;
  final String? id;
  CardMovie({
    Key? key,
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
            Navigator.pushNamed(context, 'detail', arguments: id);
          },
          child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://image.tmdb.org/t/p/w300/$image',
              fit: BoxFit.fitHeight,
              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.notFound,
                      width: 150,
                    ),
                    Text(
                      'image not found',
                      style: AppTextStyles.bodyBold,
                    )
                  ],
                );
              },
              
              
            ),
          )),
    );
  }
}
