import 'package:course_connect/features/dashboard/screen/dashboard.dart';
import 'package:course_connect/features/settings/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
        
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Dashboard'),
            NavigationDestination(icon: Icon(Iconsax.book), label: 'Course'),
            NavigationDestination(icon: Icon(Iconsax.wallet), label: 'Academics'),
            NavigationDestination(icon: Icon(Iconsax.task), label: 'Tasks'),
            NavigationDestination(icon: Icon(Iconsax.setting_2), label: 'Settings'),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Dashboard(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
    const Settings(),
  ];
}
