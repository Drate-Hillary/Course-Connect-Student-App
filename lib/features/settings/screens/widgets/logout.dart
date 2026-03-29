import 'package:course_connect/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      width: double.infinity,
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(Iconsax.logout_1),
        label: Text(
          "Log out",
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: AppColors.whiteColor),
        ),
        style: TextButton.styleFrom(
          backgroundColor: AppColors.errorColor,
          textStyle: TextStyle(color: AppColors.whiteColor),
          iconColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}