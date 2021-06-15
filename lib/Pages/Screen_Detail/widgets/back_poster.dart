import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/controllers/movie_detail.dart';


class BackPoster extends StatelessWidget {
  final int id;
  BackPoster({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MovieDetailController movieController = MovieDetailController();
    movieController.loadScreenData(id);
    return FutureBuilder<MoviesDetail>(
        future: movieController.movie,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return Container(
              height: MediaQuery.of(context).size.height,
              child: Container(
                
                child: Image.network(
                  "https://image.tmdb.org/t/p/original/${snapShot.data!.image}",
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.centerRight,
                  scale: 0.1,
                ),
              ),
            );
          } else if (snapShot.hasError) {
            return Text('snapShot.error');
          } else {
            return Container();
          }
        });
  }
}
