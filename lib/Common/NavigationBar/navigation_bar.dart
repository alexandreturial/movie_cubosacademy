import 'package:flutter/material.dart';

import 'package:desafio_2/core/app_colors.dart';
import 'package:desafio_2/core/app_textstyle.dart';

class NavigationBar extends StatefulWidget {
  final int index;
  NavigationBar({
    Key? key,
    this.index = 0,
  }) : super(key: key);
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  void _onItemTapped(int index) {
    setState(() {
      _getPage(index);
    });
  }


  void _getPage(int index){
    switch (index) {
      case 0:
        Navigator.popAndPushNamed(context, '/');
        break;
      case 1:
        //Navigator.popAndPushNamed(context, 'user');
        break;
      case 2:
        Navigator.popAndPushNamed(context, 'favorited');
        break;
      default:
    }
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
          icon: new Icon(Icons.person),
          label: "User",
          
        ),
        BottomNavigationBarItem(
            icon: new Icon(Icons.favorite), label: "favoritos"),
      ],
      
      // fixedColor: AppColors.lightPink,
      currentIndex: widget.index,
      selectedItemColor: AppColors.lightPink,
       selectedLabelStyle: AppTextStyles.body15,
      onTap: _onItemTapped,
    );
  }
}
