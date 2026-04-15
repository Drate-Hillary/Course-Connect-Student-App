import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    super.key,
    required this.title,
    required this.count,
  });

  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: DeviceUtility.getScreenWidth(context) * 0.31,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.grey.withAlpha(AppSize.alpha3), width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(height: AppSize.sizedBoxHeightSm / 2),

            Text(count, style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
