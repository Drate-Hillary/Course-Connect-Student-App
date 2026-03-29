import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_connect/common/loaders/animation_loader.dart';

class ScreenLoader {

  static void openLoadingDialog(String text, String animation) {
    int alpha = (0.2 * 255).round();
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_)=> PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withAlpha(alpha),
          child: Column(
            children: [
              const SizedBox(height: 250,),
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        )
      ),
    );
  }

  static void stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}