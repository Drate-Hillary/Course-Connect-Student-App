import 'package:course_connect/common/widgets/container/rounded_container.dart';
import 'package:course_connect/features/settings/controllers/academics_controller.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcademicChart extends StatelessWidget {
  const AcademicChart({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AcademicsController());

    return Padding(
      padding: const EdgeInsets.all(AppSize.md),
      child: RoundedContainer(
        showBorder: true,
        showShadow: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General Course Unit Performnance",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSize.sizedBoxHeightSm),
            Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: SizedBox(
                height: 200,
                child: BarChart(
                  BarChartData(
                    titlesData: buildFlTitleData(),
                    borderData: FlBorderData(
                      show: true,
                      border: const Border(
                        top: BorderSide.none,
                        right: BorderSide.none,
                      ),
                    ),
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: false,
                      drawVerticalLine: true,
                      horizontalInterval: 200,
                    ),
                    barGroups: controller.coursePerformance
                        .asMap()
                        .entries
                        .map(
                          (entry) => BarChartGroupData(
                            x: entry.key,
                            barRods: [
                              BarChartRodData(
                                toY: entry.value,
                                width: 20,
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(AppSize.sm),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                    groupsSpace: AppSize.spaceBtwItems,
                    barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(
                        getTooltipColor: (_) => AppColors.softGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlTitlesData buildFlTitleData() {
    final courses = AcademicsController.courses;
    return FlTitlesData(
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTitlesWidget: (value, meta) {
            final index = value.toInt();
            if (index < 0 || index >= courses.length) return const SizedBox();
            return Text(
              courses[index]['code'],
              style: const TextStyle(fontSize: 10),
            );
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 36,
          interval: 20,
          getTitlesWidget: (value, meta) => Text('${value.toInt()}'),
        ),
      ),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
    );
  }
}
