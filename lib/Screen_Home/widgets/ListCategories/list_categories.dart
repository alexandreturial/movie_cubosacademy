import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Home/JsonType/genres.dart';
import 'package:movie_desafio/Screen_Home/widgets/CardCategoies/card_categoires.dart';
import 'package:movie_desafio/Screen_Home/widgets/TitleColumn/title_column.dart';

class ListCategories extends StatelessWidget {
  final List<Genre> genres;

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
                return CardCategories(name: genres[index].name);
              }),
          ),
        ],
      ),
    );
  }
}