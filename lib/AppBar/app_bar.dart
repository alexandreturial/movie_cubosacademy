import 'package:flutter/material.dart';

class AppBartWidget extends PreferredSize {
  @override
   AppBartWidget() : super(
    preferredSize: Size.fromHeight(250),
    child:  SafeArea(
      child: Container(
        height: 80,
        color: Colors.white24,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Movies"),
            Icon(Icons.search),
          ]
        ),
      ),
    ),
  );
}