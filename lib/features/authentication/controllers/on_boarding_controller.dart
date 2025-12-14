import 'package:ecom/features/authentication/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instence => Get.find();
  final currentPageIndex = 0.obs;

  final pagecontroller = PageController();

  void updatePageIndigator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClicked(int index) {
    currentPageIndex.value = index;
    pagecontroller.jumpToPage(index);
  }

  void nextPage() {
    currentPageIndex.value += 1;
    if (currentPageIndex.value == 3) {
      Get.to(() => LoginScreen());
      return;
    }
    pagecontroller.nextPage(
      duration: Duration(seconds: 1),
      curve: Curves.bounceIn,
    );
  }

  void skipPage(int index) {
    currentPageIndex.value = index;
    Get.to(LoginScreen());
  }
}
