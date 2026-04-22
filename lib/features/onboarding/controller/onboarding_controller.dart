import 'package:course_connect/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // update page indicator
  void updatePageIndicator(index)=> currentPageIndex.value = index;

  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage(){
    if (currentPageIndex.value == 2) {
      Get.to(Login());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void prevPage(){
    if (currentPageIndex.value > 0) {
      int page = currentPageIndex.value - 1;
      pageController.jumpToPage(page);
    }
  }



}