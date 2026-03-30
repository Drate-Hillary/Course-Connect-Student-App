import 'package:course_connect/features/dashboard/screen/widgets/dashboard_header.dart';
import 'package:course_connect/features/dashboard/screen/widgets/dashboard_overview.dart';
import 'package:course_connect/features/dashboard/screen/widgets/schedule_indicator.dart';
import 'package:course_connect/features/settings/screens/Academic/widgets/academic_chart.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DashboardHeader(),
          const SizedBox(height: AppSize.sizedBoxHeightSm),

          // overview
          DashboardOverview(),
          // schedule slider
          Padding(
            padding: const EdgeInsets.all(AppSize.md),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Schedule",
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                // card
                ScheduleIndicator(),
              ],
            ),
          ),

          AcademicChart(),
        ],
      ),
    );
  }
}