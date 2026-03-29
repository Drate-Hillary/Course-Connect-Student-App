import 'package:course_connect/common/widgets/container/rounded_container.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      showShadow: true,
      margin: EdgeInsets.only(right: AppSize.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flutter Crash Course",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 5),
              Text(
                "By Ali Raza",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.primaryColor),
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.clock,
                    color: AppColors.warningColor,
                    size: AppSize.iconSm,
                  ),
                  const SizedBox(width: 5),
                  Text("11:00am - 13:00pm", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.location4,
                    color: AppColors.iconColor,
                    size: AppSize.iconSm,
                  ),
                  const SizedBox(width: 5),
                  Text("Big Lab1", style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),

          SizedBox(width: 10),
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.primaryColor.withAlpha(AppSize.alpha1),
            backgroundImage: AssetImage(AppImage.avatar),
          ),
        ],
      ),
    );
  }
}
