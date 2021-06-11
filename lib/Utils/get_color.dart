import 'package:flutter/material.dart';

class ColorGenres{
  static Color getColorType({String? type}) {
    switch (type) {
      case 'Action':
        return Colors.brown.shade400;

      case 'Adventure':
        return Colors.red;

      case 'Animation':
        return Colors.blue;

      case 'Comedy':
        return Colors.green;

      case 'Crime':
        return Colors.amber;

      case 'Documentary':
        return Colors.cyanAccent.shade400;

      case 'Drama':
        return Colors.orange;

      case 'Family':
        return Colors.purple;

      case 'Fantasy':
        return Colors.orange.shade300;

      case 'History':
        return Colors.indigo.shade200;

      case 'Horror':
        return Colors.pink;

      case 'Music':
        return Colors.lightGreen.shade500;

      case 'Mystery':
        return Colors.grey;

      case 'Science Fiction':
        return Colors.indigo.shade400;

      case 'TV Movie':
        return Colors.brown;

      case 'Thriller':
        return Colors.indigo.shade800;

      case 'War':
        return Colors.blueGrey;

      case 'Western':
        return Colors.pinkAccent.shade100;

      default:
        return Colors.grey;

    }
  }
}