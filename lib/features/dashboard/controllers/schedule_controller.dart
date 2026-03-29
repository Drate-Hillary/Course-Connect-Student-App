import 'package:get/get.dart';

class ScheduleController extends GetxController {
  static ScheduleController get to => Get.find();

  final carouselCurrentItem = 0.obs;

  void updateCarouselIndex(int index) => carouselCurrentItem.value = index;
}