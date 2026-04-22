import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';

class CustomOutlineButtonTheme {
  CustomOutlineButtonTheme._();

  static final outlineButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      side: BorderSide(color: AppColors.blackColor),
      padding: const EdgeInsets.symmetric(vertical: 20),
      
    ),
  );
}