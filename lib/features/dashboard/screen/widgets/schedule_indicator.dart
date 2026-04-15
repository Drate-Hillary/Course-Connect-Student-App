import 'package:course_connect/common/widgets/container/circular_container.dart';
import 'package:course_connect/features/dashboard/controllers/schedule_controller.dart';
import 'package:course_connect/features/dashboard/screen/widgets/schedule.dart';
import 'package:course_connect/util/constants/colors.dart';
import 'package:course_connect/util/constants/size.dart';
import 'package:course_connect/util/device/device_utility.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScheduleIndicator extends StatelessWidget {
  const ScheduleIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScheduleController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: DeviceUtility.getScreenHeight(context) * 0.22,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => controller.updateCarouselIndex(index)
          ),
          items: List.generate(4, (index) => Schedule()),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 4; i++)
                CircularContainer(
                  width: 25,
                  height: 3,
                  backgroundColor: controller.carouselCurrentItem.value == i ? AppColors.blackColor : AppColors.grey.withAlpha(AppSize.alpha5),
                  margin: EdgeInsets.only(right: 5),
                ),
            ],
          ),
        ),
      ],
    );
  }
}