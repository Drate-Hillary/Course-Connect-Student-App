import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(AppImage.logo),
          color: AppColors.blackColor,
        ),
        const SizedBox(height: AppSize.sizedBoxHeightMd),
    
        Text(
          TextStrings.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          TextStrings.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
