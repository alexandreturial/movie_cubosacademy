import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle title = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none
  );

  static final TextStyle titleBold = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none
  );

  static final TextStyle title25 = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 25,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none
  );

  static final TextStyle logo = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.none
  );

  static final TextStyle logoPink = GoogleFonts.poppins(
    color: AppColors.lightPink,
    decoration: TextDecoration.underline,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle body = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    decoration: TextDecoration.none,
  );
  static final TextStyle bodyBold = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    decoration: TextDecoration.none,
  );
  static final TextStyle bodyBoldPink = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.lightPink,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.lightPink,
  );

  static final TextStyle bodyBoldPink25 = GoogleFonts.poppins(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: AppColors.lightPink,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.lightPink,
  );

  static final TextStyle body15 = GoogleFonts.poppins(
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.normal,
    decoration: TextDecoration.none,
  );
}
