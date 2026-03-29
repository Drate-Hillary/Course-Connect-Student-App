import 'package:flutter/material.dart';
import 'package:course_connect/util/theme/custom_theme/appbar_theme.dart';
import 'package:course_connect/util/theme/custom_theme/checkbox_theme.dart';
import 'package:course_connect/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:course_connect/util/theme/custom_theme/outline_button_theme.dart';
import 'package:course_connect/util/theme/custom_theme/text_button_theme.dart';
import 'package:course_connect/util/theme/custom_theme/text_theme.dart';
import 'package:course_connect/util/theme/custom_theme/textfield_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTextTheme,
    appBarTheme: CustomAppbarTheme.appBarTheme,
    checkboxTheme: CustomCheckBoxTheme.appCheckBoxTheme,
    inputDecorationTheme: TextfieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    textButtonTheme: CustomTextButtonTheme.lightTextButtonTheme,
    outlinedButtonTheme: CustomOutlineButtonTheme.outlineButtonThemeData,
  );
}