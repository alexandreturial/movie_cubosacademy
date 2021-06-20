import 'package:desafio_2/Common/NavigationBar/navigation_bar.dart';
import 'package:desafio_2/Pages/Screen_Home/screen_home.dart';
import 'package:desafio_2/Pages/Screen_favorited/favorited_view.dart';
import 'package:flutter/material.dart';

class LayoutWidget extends StatefulWidget {
  int index;

  LayoutWidget({ 
    Key? key, 
    this.index = 0
  }) : super(key: key);

  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    void currentIndex(int id){
     setState(() {
      widget.index = id;
     });
    }

    Widget page(int id){
      switch (id) {
        case 0:
          return ScreenHome();
        case 1:
          return ScreenFavorited();
        default:
      }
      return Container();
    }

    return Scaffold(
      body: page( widget.index),
      bottomNavigationBar: NavigationBar(
        currentIndex: (int id){
          currentIndex(id);
        },
        index: widget.index,
      ),
    );
  }
}