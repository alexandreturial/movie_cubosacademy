import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_By_Genres.dart/widgets/icon_action.dart';

class NavegationButton extends StatelessWidget {
  final IconAction iconBack;
  final IconAction iconPlay;
  final IconAction iconNext;
  NavegationButton({
    Key key, 
    this.iconBack, 
    this.iconPlay, 
    this.iconNext, 
  }) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
      iconBack,
      iconPlay,
      iconNext,
     ],
    );
  }
}