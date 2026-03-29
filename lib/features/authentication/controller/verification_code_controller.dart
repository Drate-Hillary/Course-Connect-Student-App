import 'package:course_connect/common/loaders/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController {
  static VerificationCodeController get instance => Get.find();

  final List<TextEditingController> digitControllers = List.generate(6, (_) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

  final RxBool isComplete = false.obs;

  @override
  void onClose() {
    for (final c in digitControllers) c.dispose();
    for (final f in focusNodes) f.dispose();
    super.onClose();
  }

  void onDigitChanged(String value, int index) {
    if (value.length == 1 && index < 5) {
      focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      focusNodes[index - 1].requestFocus();
    }
    isComplete.value = digitControllers.every((c) => c.text.isNotEmpty);
  }

  String get otpCode => digitControllers.map((c) => c.text).join();

  void verifyCode() {
    
    AppLoaders.verifySnackBar(title: 'Verifying...', message: '$otpCode');
  }

  void resendCode() {
    for (final c in digitControllers) c.clear();
    focusNodes.first.requestFocus();
    isComplete.value = false;
    AppLoaders.infoSnackBar(
      title: 'Code Resent',
      message: 'A new verification code has been sent to your email.',
    );
  }
}
