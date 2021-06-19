import 'package:desafio_2/core/app_images.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:desafio_2/Pages/Screen_Detail/JsonType/movie_detail.dart';
import 'package:desafio_2/Pages/Screen_Detail/controllers/movie_detail.dart';

class BackPoster extends StatelessWidget {
  final String id;
  BackPoster({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MovieDetailController movieController = MovieDetailController();
    movieController.loadScreenData(id);
    return FutureBuilder<MoviesDetail>(
        future: movieController.movie,
        builder: (context, snapShot) {
          if (snapShot.hasData) {
            return  ClipRRect(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  "https://image.tmdb.org/t/p/original/${snapShot.data!.image}",
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                  errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
