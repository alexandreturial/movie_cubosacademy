import 'package:flutter/material.dart';
import 'package:desafio_2/core/app_colors.dart';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.arrow_back_rounded,
        color: AppColors.lightPink,
        size: 35,
      ),
      onTap: () => Navigator.popAndPushNamed(context, '/'),
    );
  }
}
