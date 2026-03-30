import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';

class DashboardOverview extends StatelessWidget {
  const DashboardOverview({
    super.key,
  });

  final List<Widget> overviewCards = [
    const OverviewCard(),
    const OverviewCard(),
    const OverviewCard(),
    const OverviewCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          List.generate(overviewCards.length, () => const OverviewCard())
        ],
      ),
    );
  }
}

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text("Overview"),
      ),
    );
  }
}
