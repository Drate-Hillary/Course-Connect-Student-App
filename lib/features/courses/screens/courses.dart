import 'package:course_connect/common/widgets/floating_button.dart';
import 'package:course_connect/common/widgets/search_bar.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/image_string.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconsax/iconsax.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore Courses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              // Handle search action
            },
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedFilterVertical,
              size: 25,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            // search bar
            const CustomSearchBar(hintText: 'Search for courses...'),

            const SizedBox(height: AppSize.sizedBoxHeightLg),
            // placeholder for courses list
            ListBody(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: AppColors.grey.withAlpha(AppSize.alpha2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CourseCardHeader(),

                        const SizedBox(height: AppSize.spaceBtwColumns),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: AppSize.iconXs,
                                  backgroundImage:  AssetImage(
                                    AppImage.avatar
                                  ),
                                ),

                                const SizedBox(width: 8,),

                                Text(
                                  "John Doe",
                                  style: Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                            
                            Row(
                              children: [
                                Icon(
                                  Iconsax.user,
                                  size: AppSize.iconXs,
                                ),
                                const SizedBox(width: 6,),
                                Text(
                                  "Total Students: ",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(width: 6,),
                                Text(
                                  "33",
                                  style: Theme.of(context).textTheme.labelLarge,
                                )
                              ],
                            )
                          ],
                        ),

                        SizedBox(height: AppSize.spaceBtwColumns,),
                        // View details
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                          
                          onPressed: () {},
                          child: Text("View Details", ),
                        ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingButton(labelString: 'Enroll Course'),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class CourseCardHeader extends StatelessWidget {
  const CourseCardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // course icon
        CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.textWhite,
          child: HugeIcon(
            icon: HugeIcons.strokeRoundedHtml5,
            size: AppSize.iconXL,
          ),
        ),

        const SizedBox(width: AppSize.sizedBoxWidthMd),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Web Development',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            // Ratings
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.star_15,
                    size: AppSize.iconSm,
                    color: AppColors.warningColor,
                  ),
                  SizedBox(width: AppSize.sizedBoxWidthSm),
                  Text(
                    "4.5 / 5",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.warningColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
