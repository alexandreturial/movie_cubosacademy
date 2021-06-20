import 'package:flutter/material.dart';

import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class NavigationBar extends StatefulWidget {
  final int index;
  final Function currentIndex;
  NavigationBar({
    Key? key,
    this.index = 0, 
    required this.currentIndex,
  }) : super(key: key);
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  void _onItemTapped(int index) {
    widget.currentIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.backgorund,
      elevation: 2.0,
      unselectedItemColor: AppColors.white,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.house),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.favorite),
          label: "favoritos",
        ),
      ],

      // fixedColor: AppColors.lightPink,
      currentIndex: widget.index,
      selectedItemColor: AppColors.lightPink,
      selectedLabelStyle: AppTextStyles.body15,
      onTap: _onItemTapped,
    );
  }
}
