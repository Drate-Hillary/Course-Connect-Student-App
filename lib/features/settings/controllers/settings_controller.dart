import 'package:get/get.dart';

class SettingsController extends GetxController {
  static SettingsController get instance => Get.find();

  final selectedItem = 'Profile'.obs;

  void selectItem(String title) => selectedItem.value = title;
}
