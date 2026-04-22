import 'package:course_connect/features/onboarding/controller/onboarding_controller.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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