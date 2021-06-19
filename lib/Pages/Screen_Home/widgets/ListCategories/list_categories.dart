import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Home/JsonType/genres.dart';
import 'package:desafio_2/Pages/Screen_Home/widgets/CardCategoies/card_categoires.dart';
import 'package:desafio_2/Common/TitleColumn/title_column.dart';

class ListCategories extends StatelessWidget {
  final List<Genre>? genres;

  ListCategories({
    Key? key,
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
            height: 300,
            child: GridView.builder(
               gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                
              ),
              scrollDirection: Axis.horizontal,
              itemCount: genres!.length,
              itemBuilder: (BuildContext context, int index) {
                return CardCategories(
                  name: genres![index].name,
                  id: genres![index].id);
              }),
          ),
        ],
      ),
    );
  }
}