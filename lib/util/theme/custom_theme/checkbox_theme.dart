import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';

class CustomCheckBoxTheme {
  CustomCheckBoxTheme._();

  static CheckboxThemeData appCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
