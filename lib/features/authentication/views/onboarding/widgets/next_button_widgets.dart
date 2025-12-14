import 'package:ecom/features/authentication/controllers/on_boarding_controller.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instence;
    bool isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark
              ? Theme.of(context).primaryColor
              : TColors.dark,
        ),
        onPressed: () {
          controller.nextPage();
        },
        child: Icon(Icons.arrow_forward_ios_sharp),
      ),
    );
  }
}
