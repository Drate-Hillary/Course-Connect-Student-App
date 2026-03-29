import 'package:course_connect/features/authentication/screens/password%20configuration/verification_code.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:course_connect/common/loaders/animation_loader.dart';
import 'package:course_connect/common/loaders/loaders.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.whiteColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSize.borderRadiusLg)),
      ),
      builder: (_) => const ForgotPassword(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AppSize.md,
        right: AppSize.md,
        top: AppSize.md,
        bottom: MediaQuery.of(context).viewInsets.bottom + AppSize.md,
      ),
      
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimationLoaderWidget(
              text: TextStrings.forgetPasswordSubTitle,
              animation: AppImage.forgotPassword,
            ),
            const SizedBox(height: AppSize.spaceBtwItems),
            Text(
              TextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: AppSize.spaceBtwItems),
            TextFormField(
              decoration: const InputDecoration(
                labelText: TextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: AppSize.defaultSpace),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                AppLoaders.infoSnackBar(
                  title: TextStrings.sentVerificationCode,
                  message: 'We have sent a verification code to your email',
                );
                Get.to(()=> VerificationCode());
              },
                child: const Text(TextStrings.submit),
              ),
            ),
            const SizedBox(height: AppSize.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}