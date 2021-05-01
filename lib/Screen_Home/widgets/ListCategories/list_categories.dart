import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/widgets/TitleColumn/title_column.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ListCategories extends StatelessWidget {
   List<Genre> genres;

  ListCategories({
    Key key,
    this.genres,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleColumn(
            title: "Categories",
          ),
          Container(
            height: 400,
            child: GridView.builder(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                
              ),
              itemCount: genres.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: const Offset(0.0, 6.0),
                        blurRadius: 10,
                        spreadRadius: 0.0,
                      ), //BoxShadow//BoxShadow
                    ],
                  ),
                  child:Text(genres[index].name)
                );
              }),
          ),
        ],
      ),
    );
  }
}