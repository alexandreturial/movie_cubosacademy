import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';

class ScreenDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _sigmaX = 1.0; // from 0-10
    double _sigmaY = 1.0; // from 0-10
    
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Image.network(
            "https://image.tmdb.org/t/p/original/9yBVqNruk6Ykrwc32qrK2TIE5xw.jpg",
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
          
          child: Container(
            padding: EdgeInsets.all(15),
          color: Colors.black.withOpacity(0.4),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "KONG vs GOZILLA",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onTap: () => Navigator.pop(context),
                  ),
                  Text(
                    "KONG vs GOZILLA",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        decoration: TextDecoration.none),
                  ),
                  
                ],
              ),
             
            ],
      ),
          ),
        ))
    ]);
  }
}
