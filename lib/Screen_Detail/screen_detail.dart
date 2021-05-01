import 'package:flutter/material.dart';

class ScreenDetail extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[400],
      child: TextButton(
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}