import 'package:desafio_2/Pages/Screen_Detail/widgets/back_button.dart';
import 'package:desafio_2/core/app_images.dart';
import 'package:desafio_2/core/app_textstyle.dart';
import 'package:flutter/material.dart';

class ErroWidget extends StatelessWidget {
  const ErroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.notFound,
            width: 150,
          ),
          Text(
            'Movie not found',
            style: AppTextStyles.bodyBold,
          ),
          Container(
            width: 150,
            height: 150,
            child:BackButtonWidget(),
          )
        ],
      ),
    );
  }
}
