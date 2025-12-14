import 'package:ecom/features/authentication/controllers/on_boarding_controller.dart';
import 'package:ecom/features/authentication/views/onboarding/widgets/next_button_widgets.dart';
import 'package:ecom/features/authentication/views/onboarding/widgets/onboardig_widgets.dart';
import 'package:ecom/features/authentication/views/onboarding/widgets/skip_button_widgets.dart';
import 'package:ecom/features/authentication/views/onboarding/widgets/smooth_page_indigator_widget.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late PageController pageController;
  late OnBoardingController _onBoardingController;
  @override
  void initState() {
    _onBoardingController = Get.put(OnBoardingController());
    pageController = _onBoardingController.pagecontroller;
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              _onBoardingController.updatePageIndigator(value);
            },
            controller: pageController,
            children: [
              OnBoardingWidgets(
                imagePath: TImages.productsSaleIllustration,
                title: TTexts.onBoardingTitle1,
                controller: pageController,
              ),
              OnBoardingWidgets(
                imagePath: TImages.verifyIllustration,
                title: TTexts.onBoardingTitle2,
                controller: pageController,
              ),
              OnBoardingWidgets(
                imagePath: TImages.deliveredEmailIllustration,
                title: TTexts.onBoardingTitle3,
                controller: pageController,
              ),
            ],
          ),

          // skip button
          SkipButtonWidget(),

          // smooth page indigator package
          SmoothPageIndigator(),

          // next button
          NextButtonWidget(),
        ],
      ),
    );
  }
}
