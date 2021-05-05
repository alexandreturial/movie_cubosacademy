import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.backgorund,
      elevation: 2.0,
      selectedLabelStyle: AppTextStyles.body15,
      fixedColor: AppColors.lightPink,
      unselectedItemColor: AppColors.white,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.house),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          label: "User",
        ),
        BottomNavigationBarItem(
            icon: new Icon(Icons.favorite), label: "favoritos"),
      ],
    );
  }
}
