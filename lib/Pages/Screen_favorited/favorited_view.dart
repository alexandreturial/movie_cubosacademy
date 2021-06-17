import 'package:desafio_2/Common/NavigationBar/navigation_bar.dart';
import 'package:desafio_2/Pages/Screen_By_Genres.dart/CardMovie/card_movie.dart';
import 'package:desafio_2/Pages/Screen_favorited/Widgets/card_movies.dart';
import 'package:desafio_2/Pages/Screen_favorited/controllers/movie_detail.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class Favorited extends StatelessWidget {
  const Favorited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieFavoritedController controller = MovieFavoritedController();
    controller.getMovies();
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(15),
            color: AppColors.backgorund,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: StreamBuilder<Movies>(
                  stream: controller.movies.stream,
                  builder: (context, snapShot) {
                    if (snapShot.connectionState != ConnectionState.active) {
                      return CircularProgressIndicator();
                    }
                    if (snapShot.hasData && snapShot.data!.movies != null) {
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 6),
                        itemCount: snapShot.data!.movies!.length,
                        itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: const Offset(0.0, 6.0),
                                    blurRadius: 10,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow//BoxShadow
                                ],
                              ),
                              child: CardMovies(
                                image: snapShot.data!.movies![index].image,
                                title:'${snapShot.data!.movies![index].title}',
                              ),
                            );
                        },
                      );
                    } else if (snapShot.hasError) {
                      return Text('snapShot.error');
                    } else {
                      return Text(
                          'Nenhum Filme encontrado',
                            style: AppTextStyles.title25,
                            textAlign: TextAlign.center,
                        );
                    }
                  }),
            )),
        bottomNavigationBar: NavigationBar(
          index: 2,
        ));
  }
}
