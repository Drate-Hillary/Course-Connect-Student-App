import 'package:course_connect/util/constants/colors.dart';
import 'package:flutter/material.dart';

class AcademicCardItems extends StatelessWidget {
  const AcademicCardItems({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!
              .copyWith(color: AppColors.whiteColor),
        ),
        Text(
          message,
          style: Theme.of(context).textTheme.headlineMedium!
              .copyWith(color: AppColors.whiteColor),
        ),
      ],
    );
  }
}
