import 'package:course_connect/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
    required this.labelString,
  });

  final String labelString;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: FloatingActionButton.extended(
        onPressed: () {
          // Handle add course action
        },
        label: Text(
          labelString,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: Colors.white),
        ),
        icon: Icon(Iconsax.add, color: Colors.white),
        backgroundColor: AppColors.primaryColor,
        extendedTextStyle: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}

