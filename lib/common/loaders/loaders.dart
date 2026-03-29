import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLoaders {
  static void hideSnackBar() =>
      ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static void show({
    required String title,
    required String message,
    required ContentType contentType,
  }) {
    ScaffoldMessenger.of(Get.context!)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: title,
            message: message,
            contentType: contentType,
          ),
        ),
      );
  }

  static void customToast({required String message}) => show(title: 'Notice', message: message, contentType: ContentType.help);

  static void warningSnackBar({required String title, String message = ''}) => show(title: title, message: message, contentType: ContentType.warning);

  static void successSnackBar({required String title, String message = ''}) => show(title: title, message: message, contentType: ContentType.success);

  static void errorSnackBar({required String title, String message = ''}) => show(title: title, message: message, contentType: ContentType.failure);

  static void infoSnackBar({required String title, String message = ''}) => show(title: title, message: message, contentType: ContentType.help);

  static void verifySnackBar({required String title, String message = ''}) => show(title: title, message: message, contentType: ContentType.success);
}
