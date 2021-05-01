import 'package:flutter/material.dart';

class ScreenDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Image.network(
            "https://image.tmdb.org/t/p/original/inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg",
            fit: BoxFit.fitHeight,
            scale: 5.0,
          ),
        ),
      ),
      SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                Text(
                  "KONG vs GOZILLA",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                )
              ],
            ),
            Text(
              "KONG vs GOZILLA",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            )
          ],
      ),
        ))
    ]);
  }
}
