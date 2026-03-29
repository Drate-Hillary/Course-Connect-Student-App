import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingHeader extends StatelessWidget {
  const SettingHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(radius: 50, backgroundImage: AssetImage(AppImage.avatar)),
              SizedBox(
                height: 35,
                width: 35,
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.camera,
                      size: AppSize.iconSm,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.sizedBoxHeightSm),
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.buttonPrimary,
            ),
          ),
          Text(
            'johndoe@gmail.com',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.blackColor.withAlpha(AppSize.alpha5)),
          ),
          Row(
            children: [
              
            ],
          )

        ],
      ),
    );
  }
}
