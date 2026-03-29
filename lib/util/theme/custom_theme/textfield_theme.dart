import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';

class TextfieldTheme {
  TextfieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.darkerGrey,
    suffixIconColor: AppColors.darkerGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: AppColors.blackColor,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: AppColors.blackColor,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.blackColor.withAlpha(AppSize.alpha8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.darkerGrey,
    suffixIconColor: AppColors.darkerGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeMd,
      color: AppColors.whiteColor,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AppSize.fontSizeSm,
      color: AppColors.whiteColor,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AppColors.whiteColor.withAlpha(AppSize.alpha8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.darkGrey),
    ),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSize.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AppColors.errorColor),
    ),
  );
}
