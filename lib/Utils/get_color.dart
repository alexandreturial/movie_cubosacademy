import 'package:flutter/material.dart';

class ColorGenres{
  static Color getColorType({String type}) {
    switch (type) {
      case 'Action':
        return Colors.brown[400];
        break;
      case 'Adventure':
        return Colors.red;
        break;
      case 'Animation':
        return Colors.blue;
        break;
      case 'Comedy':
        return Colors.green;
        break;
      case 'Crime':
        return Colors.amber;
        break;
      case 'Documentary':
        return Colors.cyanAccent[400];
        break;
      case 'Drama':
        return Colors.orange;
        break;
      case 'Family':
        return Colors.purple;
        break;
      case 'Fantasy':
        return Colors.orange[300];
        break;
      case 'History':
        return Colors.indigo[200];
        break;
      case 'Horror':
        return Colors.pink;
        break;
      case 'Music':
        return Colors.lightGreen[500];
        break;
      case 'Mystery':
        return Colors.grey;
        break;
      case 'Science Fiction':
        return Colors.indigo[400];
        break;
      case 'TV Movie':
        return Colors.brown;
        break;
      case 'Thriller':
        return Colors.indigo[800];
        break;
      case 'War':
        return Colors.blueGrey;
        break;
      case 'Western':
        return Colors.pinkAccent[100];
        break;
      default:
        return Colors.grey;
        break;
    }
  }
}