import 'package:course_connect/features/settings/screens/Academic/widgets/academic_card_items.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class AcademicCard extends StatelessWidget {
  const AcademicCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.26,
      width: double.infinity,
    
      child: Padding(
        padding: const EdgeInsets.all(AppSize.sm),
        child: Card(
          color: AppColors.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(AppSize.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.school_outlined,
                      color: AppColors.whiteColor,
                      size: AppSize.iconMd,
                    ),
                    const SizedBox(width: AppSize.sizedBoxWidthMd),
                    Text(
                      "Software Engineering",
                      style: Theme.of(context).textTheme.headlineSmall!
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.sizedBoxHeightMd),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AcademicCardItems(title: "CGPA", message: "4.2"),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: AppColors.grey,
                      ),
                    ),
                    AcademicCardItems(title: "Courses", message: "5",),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: AppColors.grey,
                      ),
                    ),
                    AcademicCardItems(title: "Semester", message: "3"),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: AppColors.grey,
                      ),
                    ),
                    AcademicCardItems(title: "Year", message: "3")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}