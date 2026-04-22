import 'package:course_connect/features/onboarding/controller/onboarding_controller.dart';
import 'package:course_connect/features/onboarding/screens/widgets/dot_navgitor.dart';
import 'package:course_connect/features/onboarding/screens/widgets/onboarding_button.dart';
import 'package:course_connect/features/onboarding/screens/widgets/onboarding_page.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              // page
              OnboardingPage(
                image: AppImage.onboarding1,
                title: TextStrings.onBoardingTitle1,
                subTitle: TextStrings.onBoardingSubTitle1,
              ),

              OnboardingPage(
                image: AppImage.onboarding2,
                title: TextStrings.onBoardingTitle2,
                subTitle: TextStrings.onBoardingSubTitle2,
              ),

              OnboardingPage(
                image: AppImage.onboarding3,
                title: TextStrings.onBoardingTitle3,
                subTitle: TextStrings.onBoardingSubTitle3,
              ),
            ],
          ),

          // Dot Navigation
          DotNavigator(),

          //buttons
          OnboardingButtons(),
        ],
      ),
    );
  }
}