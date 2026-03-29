import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(radius: 50, backgroundImage: AssetImage(AppImage.avatar)),
        const SizedBox(width: AppSize.sizedBoxWidthMd),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: BorderSide(color: AppColors.blackColor),
              ),
              onPressed: () {},
              icon: Icon(Iconsax.arrow_up_3, color: AppColors.blackColor),
              label: Text(
                'Upload Photo',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Text(
              'JPG, PNG & JPEG. Max size 5MB',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }
}
