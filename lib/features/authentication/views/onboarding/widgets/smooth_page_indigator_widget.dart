import 'package:ecom/features/authentication/controllers/on_boarding_controller.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndigator extends StatelessWidget {
  const SmoothPageIndigator({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = OnBoardingController.instence;
    final bool dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        onDotClicked: (index) {
          pageController.dotNavigationClicked(index);
        },
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
        controller: pageController.pagecontroller,
        count: 3,
      ),
    );
  }
}
