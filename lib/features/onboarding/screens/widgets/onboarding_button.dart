import 'package:course_connect/features/onboarding/controller/onboarding_controller.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:flutter/material.dart';

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



