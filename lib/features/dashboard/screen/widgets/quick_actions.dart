import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Quick Actions',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: AppSize.sizedBoxHeightSm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(widgetIcon: Icon(Icons.school_outlined, color: AppColors.blackColor,), label: 'Courses'),
              ActionButton(widgetIcon: HugeIcon(icon: HugeIcons.strokeRoundedAssignments, color: AppColors.blackColor,), label: 'Quizzes'),
              ActionButton(widgetIcon: Icon(Iconsax.calendar_1, color: AppColors.blackColor,), label: 'Schedule'),
              ActionButton(widgetIcon: Icon(Iconsax.wallet, color: AppColors.blackColor,), label: 'Wallet')
            ],
          ),
        ],
      ),
    );
  }

  
}   


class ActionButton extends StatelessWidget {
  final Widget widgetIcon;
  final String label;

  const ActionButton({super.key, required this.widgetIcon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: DeviceUtility.getScreenHeight(context) * 0.12,
          width: DeviceUtility.getScreenWidth(context) * 0.22,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.lightGrey,
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widgetIcon,
              Text(label, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ],
    );
  }
}