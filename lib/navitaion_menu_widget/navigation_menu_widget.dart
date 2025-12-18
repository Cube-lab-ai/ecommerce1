import 'package:ecom/navitaion_menu_widget/navigation_controller.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuWidget extends StatelessWidget {
  const NavigationMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: Obx(() => controller.returnSelectedWidget()),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.white.withValues(alpha: 0.1)
              : TColors.black.withValues(alpha: 0.1),
          height: 80,
          elevation: 0,
          onDestinationSelected: (value) {
            controller.updateIndex(value);
          },
          indicatorColor: THelperFunctions.isDarkMode(context)
              ? Colors.white.withValues(alpha: 0.1)
              : Colors.black.withValues(alpha: 0.1),
          selectedIndex: controller.index.value,

          destinations: [
            NavigationDestination(icon: Icon(Icons.dashboard), label: 'HOME'),
            NavigationDestination(icon: Icon(Icons.home), label: 'STORE'),
            NavigationDestination(icon: Icon(Icons.person), label: 'VISHLIST'),
            NavigationDestination(icon: Icon(Icons.person), label: 'PROFILE'),
          ],
        ),
      ),
    );
  }
}
