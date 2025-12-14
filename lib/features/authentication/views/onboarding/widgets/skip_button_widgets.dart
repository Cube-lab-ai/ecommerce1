import 'package:ecom/features/authentication/controllers/on_boarding_controller.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = OnBoardingController.instence;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: OutlinedButton(
        onPressed: () {
          pageController.skipPage(2);
        },
        child: Text('Skip'),
      ),
    );
  }
}
