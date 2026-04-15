import 'package:course_connect/features/dashboard/screen/widgets/overview_card.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class DashboardOverview extends StatelessWidget {
  const DashboardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OverviewCard(title: 'Total Courses', count: '12'),
          const Spacer(),
          OverviewCard(title: 'UpComing Quiz', count: '5'),
          const Spacer(),
          OverviewCard(title: 'Attendence', count: '245'),
        ],
      ),
    );
  }
}
