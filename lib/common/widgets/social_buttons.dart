import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/image_string.dart';


class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSize.iconMd,
              height: AppSize.iconMd,
              image: AssetImage(AppImage.google, )
            )
          ),
        ),
    
        const SizedBox(width: AppSize.spaceBtwItems),
    
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSize.iconMd,
              height: AppSize.iconMd,
              image: AssetImage(AppImage.apple)
            )
          ),
        )
      ],
    );
  }
}

