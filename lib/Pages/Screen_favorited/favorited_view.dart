import 'package:desafio_2/Common/TitleColumn/title_column.dart';
import 'package:desafio_2/Pages/Screen_favorited/Widgets/card_movies.dart';
import 'package:desafio_2/Pages/Screen_favorited/controllers/movie_detail.dart';
import 'package:desafio_2/core/JsonType/movies.dart';
import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class ScreenFavorited extends StatelessWidget {
  const ScreenFavorited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieFavoritedController controller = MovieFavoritedController();
    controller.getMovies();
    return Scaffold(
      backgroundColor: AppColors.backgorund,
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: TitleColumn(
                title: 'Favorites',
                size: 35,
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height - 128,
            child: StreamBuilder<Movies>(
                stream: controller.movies.stream,
                builder: (context, snapShot) {
                  if (snapShot.connectionState != ConnectionState.active) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapShot.hasData && snapShot.data!.movies != null) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 0.7,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: snapShot.data!.movies!.length,
                      itemBuilder: (context, index) {
                        var image = snapShot.data!.movies![index].image;
                        var title = snapShot.data!.movies![index].title;
                        var id = snapShot.data!.movies![index].id;
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'detail',
                                  arguments: id);
                            },
                            child: CardMovies(
                              image: image,
                              title: '$title',
                            ),
                          ),
                        );
                      },
                    );
                  } else if (snapShot.hasError) {
                    return Text('snapShot.error');
                  } else {
                    return Center(
                      child: Text(
                        'Nenhum Filme encontrado',
                        style: AppTextStyles.title25,
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
