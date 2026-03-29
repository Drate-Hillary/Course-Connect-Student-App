import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';

class CustomAppbarTheme {
  CustomAppbarTheme._();
  static int opacity = (0.5 * 255).round();

  static const appBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    shadowColor: Colors.transparent,
    scrolledUnderElevation: 2,
    backgroundColor: AppColors.whiteColor,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.blackColor, size: 24.0),
    actionsIconTheme: IconThemeData(color: AppColors.blackColor, size: 24.0),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
  );
}