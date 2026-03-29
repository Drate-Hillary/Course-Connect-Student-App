import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.sm),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(AppImage.avatar),
              ),
              const SizedBox(width: AppSize.sizedBoxWidthSm),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),

                      Text(
                        "👋",
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(
                    "John Doe",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Badge(
                label: Text(
                  "5",
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium!.copyWith(color: AppColors.textWhite),
                ),
                child: Icon(Iconsax.notification, size: AppSize.iconMd),
              ),
              const SizedBox(width: AppSize.sizedBoxWidthSm),
              Icon(Iconsax.calendar, size: AppSize.iconMd),
            ],
          ),
        ],
      ),
    );
  }
}
