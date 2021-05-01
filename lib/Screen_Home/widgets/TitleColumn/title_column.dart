import 'package:flutter/material.dart';

class TitleColumn extends StatelessWidget {
  final String title;
  TitleColumn({
    Key key,
    this.title
  }):super(
    key: key
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
      child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.teal,
            ),),
    );
  }
}