import 'package:flutter/material.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/constants/text_strings.dart';


class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 150,
          color: AppColors.darkGrey.withAlpha(AppSize.alpha5),
        ),
        const SizedBox(width: AppSize.sm),
        Text(
          TextStrings.or,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: AppSize.sm),
        Container(
          height: 1,
          width: 150,
          color: AppColors.darkGrey.withAlpha(AppSize.alpha5),
        ),
      ],
    );
  }
}
