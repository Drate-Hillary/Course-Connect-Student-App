import 'package:course_connect/common/styles/app_bar.dart';
import 'package:course_connect/common/widgets/container/rounded_container.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Billing extends StatelessWidget {
  const Billing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Transactions"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSize.sizedBoxHeightMd),
            Column(
              children: [
                Text("Total Tuition", style: Theme.of(context).textTheme.headlineSmall!
                    .copyWith(color: AppColors.blackColor),),
                Text(
                  "500,000",
                  style: Theme.of(context).textTheme.displayLarge!
                      .copyWith(color: AppColors.blackColor),
                )
              ],
            ),
            // transaction card
            TransactionCard(),

            // transaction history
            Padding(
              padding: const EdgeInsets.all(AppSize.sm),
              child: RoundedContainer(
                showShadow: true,
                showBorder: true,
                child: DataTable2(
                  columnSpacing: AppSize.md,
                  border: TableBorder.all(),
                  dividerThickness: 0,
                  columns: [
                    DataColumn2(label: Text("Date")),
                    DataColumn2(label: Text("Description")),
                    DataColumn2(label: Text("Amount")),
                    DataColumn2(label: Text("Status")),
                  ],
                  rows: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Iconsax.money,
                    color: AppColors.whiteColor,
                    size: AppSize.iconMd,
                  ),
                  const SizedBox(width: AppSize.sizedBoxWidthMd),
                  Text(
                    "My Tuition Transactions",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "230,000",
                        style: Theme.of(context).textTheme.displaySmall!
                            .copyWith(color: AppColors.whiteColor),
                      ),
                      Text(
                        "Completed Transaction",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "270,000",
                        style: Theme.of(context).textTheme.displaySmall!
                            .copyWith(color: AppColors.whiteColor),
                      ),
                      Text(
                        "Pending Transaction",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
