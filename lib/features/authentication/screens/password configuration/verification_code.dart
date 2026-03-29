import 'package:course_connect/common/loaders/loaders.dart';
import 'package:course_connect/features/authentication/controller/verification_code_controller.dart';
import 'package:course_connect/features/authentication/screens/password%20configuration/widgets/otp.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerificationCodeController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TextStrings.verificationCode,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSize.sizedBoxHeightSm),

            Text(
              TextStrings.verificationCodeSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: AppSize.spaceBtwSections),

            // OTP Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                6,
                (index) => OtpBox(
                  controller: controller.digitControllers[index],
                  focusNode: controller.focusNodes[index],
                  onChanged: (val) => controller.onDigitChanged(val, index),
                ),
              ),
            ),

            const SizedBox(height: AppSize.spaceBtwSections),

            // Verify Button — rebuilds only this widget on isComplete change
            Obx(
              () => SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.isComplete.value
                      ? () => controller.verifyCode()
                      : () => AppLoaders.successSnackBar(title: "Verification Successful", message: "Please continue"),
                  child: const Text(TextStrings.submit),
                ),
              ),
            ),

            const SizedBox(height: AppSize.spaceBtwItems),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive the code? ",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(
                  onPressed: () => controller.resendCode(),
                  child: const Text(TextStrings.resendEmail),
                ),
              ],
            ),

            const SizedBox(height: AppSize.sizedBoxHeightMd),
            TextButton.icon(
              onPressed: () => Get.back(),
              icon: Icon(Iconsax.arrow_left),
              label: Text(TextStrings.back),
            ),
          ],
        ),
      ),
    );
  }
}