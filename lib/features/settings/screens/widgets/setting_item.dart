import 'package:course_connect/features/settings/controllers/settings_controller.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.screen,
    this.onTap,
  });

  final String title;
  final IconData leadingIcon;
  final Widget? screen;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final controller = SettingsController.instance;
    return Obx(() {
      final isSelected = controller.selectedItem.value == title;
      final color = isSelected ? AppColors.whiteColor : Colors.black;
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.borderRadiusMd),
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          title: Text(title, style: TextStyle(color: color)),
          leading: Icon(leadingIcon, color: color, size: AppSize.iconMd),
          onTap: () {
            onTap?.call();
            if (screen != null) Get.to(() => screen!);
          },
        ),
      );
    });
  }
}
