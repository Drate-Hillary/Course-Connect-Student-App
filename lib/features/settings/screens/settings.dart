import 'package:course_connect/features/settings/controllers/settings_controller.dart';
import 'package:course_connect/features/settings/screens/Academic/academic.dart';
import 'package:course_connect/features/settings/screens/billing/billing.dart';
import 'package:course_connect/features/settings/screens/profile/profile.dart';
import 'package:course_connect/features/settings/screens/widgets/logout.dart';
import 'package:course_connect/features/settings/screens/widgets/setting_header.dart';
import 'package:course_connect/features/settings/screens/widgets/setting_item.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SettingsController());
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(AppSize.sm),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Settings',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Header
            SettingHeader(),

            const SizedBox(height: AppSize.sizedBoxHeightLg),

            // Setting Options
            Container(
              padding: const EdgeInsets.all(AppSize.md),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.borderRadiusMd),
                border: Border.all(
                  color: AppColors.buttonSecondary.withAlpha(AppSize.alpha1),
                ),
              ),
              child: Column(
                children: [
                  SettingItem(
                    title: 'Profile',
                    leadingIcon: Iconsax.user,
                    screen: const Profile(),
                    onTap: () => controller.selectItem('Profile'),
                  ),
                  const SizedBox(height: AppSize.sizedBoxHeightSm / 4),
                  SettingItem(
                    title: 'Academic Profile',
                    leadingIcon: Icons.school_outlined,
                    screen: const Academic(),
                    onTap: () => controller.selectItem('Academic Profile'),
                  ),
                  const SizedBox(height: AppSize.sizedBoxHeightSm / 4),
                  SettingItem(
                    title: 'Accounts',
                    leadingIcon: Iconsax.setting_2,
                    onTap: () => controller.selectItem('Accounts'),
                  ),
                  const SizedBox(height: AppSize.sizedBoxHeightSm / 4),
                  SettingItem(
                    title: 'Privacy & Security',
                    leadingIcon: Iconsax.shield3,
                    onTap: () => controller.selectItem('Privacy & Security'),
                  ),
                  const SizedBox(height: AppSize.sizedBoxHeightSm / 4),
                  SettingItem(
                    title: 'Billings',
                    leadingIcon: Iconsax.wallet_1,
                    screen: const Billing(),
                    onTap: () => controller.selectItem('Billings'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppSize.sizedBoxHeightLg),
            Logout(),
          ],
        ),
      ),
    );
  }
}
