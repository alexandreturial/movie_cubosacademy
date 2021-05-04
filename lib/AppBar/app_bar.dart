import 'package:flutter/material.dart';
import 'package:movie_desafio/core/app_colors.dart';
import 'package:movie_desafio/core/app_textstyle.dart';

class AppBartWidget extends PreferredSize {
  @override
  AppBartWidget()
      : super(
          preferredSize: Size.fromHeight(200),
          child: Container(
            color: AppColors.backgorund,
            child: SafeArea(
              child: Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text.rich(
                    TextSpan(
                        text: "Cubos",
                        style: AppTextStyles.logo,
                        children: [
                          TextSpan(
                            text: "Movies",
                            style: AppTextStyles.logoPink,
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
          ),
        );
}
