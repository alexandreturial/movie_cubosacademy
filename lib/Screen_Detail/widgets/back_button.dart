import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.arrow_back_rounded,
        color: AppColors.lightPink,
      ),
      onTap: () => Navigator.pop(context),
    );
  }
}
