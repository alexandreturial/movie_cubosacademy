import 'package:desafio_2/Pages/Screen_Home/Controller/controller.dart';
import 'package:flutter/material.dart';

import 'package:desafio_2/Pages/Screen_Home/widgets/TitleColumn/title_column.dart';
import 'package:desafio_2/Pages/Screen_Home/widgets/card_movies.dart';
import 'package:desafio_2/core/JsonType/movies.dart';

class ListMovies extends StatefulWidget {
  final List<Movie> movies;
  final HomeViewModel controller;

  ListMovies({
    Key? key,
    required this.movies,
    required this.controller,
  }) : super(key: key);

  @override
  _ListMoviesState createState() => _ListMoviesState();
}

class _ListMoviesState extends State<ListMovies> {
  final ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    //identifica o movimento de scroll no ListBuild
    _scrollController.addListener(() {
     
      if (_scrollController.position.pixels >=
          (_scrollController.position.maxScrollExtent - 400)) {
        widget.controller.setPage();
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleColumn(
            title: "Coming soon",
          ),
          Container(
            height: 450,
            child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: widget.movies.length,
                itemBuilder: (context, index) {
                  return CardMovie(
                    image: widget.movies[index].image,
                    id: widget.movies[index].id.toString(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
