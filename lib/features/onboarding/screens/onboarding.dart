import 'package:course_connect/features/onboarding/controller/onboarding_controller.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:course_connect/util/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: DeviceUtility.getAppBarHeight() + 10,
      left: 24, 
      right: 24,
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: ()=> controller.prevPage(),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ), // Gives the button better height
              ),
              child: Text(
                "Previous",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
    
          const SizedBox(
            width: 16,
          ), 
          Expanded(
            child: ElevatedButton(
              onPressed: ()=> controller.nextPage(),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ), 
              ),
              child: Text(
                "Next",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: AppColors.textWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DotNavigator extends StatelessWidget {
  const DotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: DeviceUtility.getBottomNavigationBarHeight() + 80,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: const ExpandingDotsEffect(
            activeDotColor: AppColors.primaryColor,
            dotHeight: 4,
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final double imageHeight = HelperFunctions.getScreenHeight() * 0.6;
    final double imageWidth = HelperFunctions.getScreenWidth() * 0.8;
    return Padding(
      padding: const EdgeInsets.all(AppSize.defaultSpace),
      child: Column(
        children: [
          if (image.toLowerCase().endsWith('.svg'))
            SvgPicture.asset(image, height: imageHeight, width: imageWidth)
          else
            Image(
              width: imageWidth,
              height: imageHeight,
              image: AssetImage(image),
            ),

          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: AppSize.spaceBtwItems),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
