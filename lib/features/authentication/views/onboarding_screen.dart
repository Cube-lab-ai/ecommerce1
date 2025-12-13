import 'package:ecom/features/authentication/controllers/on_boarding_controller.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late PageController _pageController;
  late OnBoardingController _onBoardingController;
  @override
  void initState() {
    _onBoardingController = Get.put(OnBoardingController());
    _pageController = _onBoardingController.pagecontroller;
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
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
            controller: _pageController,
            children: [
              OnBoardingWidgets(
                imagePath: TImages.productsSaleIllustration,
                title: TTexts.onBoardingTitle1,
                controller: _pageController,
              ),
              OnBoardingWidgets(
                imagePath: TImages.verifyIllustration,
                title: TTexts.onBoardingTitle2,
                controller: _pageController,
              ),
              OnBoardingWidgets(
                imagePath: TImages.deliveredEmailIllustration,
                title: TTexts.onBoardingTitle3,
                controller: _pageController,
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

class SmoothPageIndigator extends StatelessWidget {
  const SmoothPageIndigator({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageController = OnBoardingController.instence;
    final bool dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        onDotClicked: (index) {
          _pageController.dotNavigationClicked(index);
        },
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
        controller: _pageController.pagecontroller,
        count: 3,
      ),
    );
  }
}

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageController = OnBoardingController.instence;
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: OutlinedButton(
        onPressed: () {
          _pageController.skipPage(2);
        },
        child: Text('Skip'),
      ),
    );
    ;
  }
}

class OnBoardingWidgets extends StatelessWidget {
  final String imagePath;
  final String title;
  final PageController controller;

  const OnBoardingWidgets({
    super.key,
    required this.imagePath,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: width * 0.8,
          height: height * 0.5,
          fit: BoxFit.contain,
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),

        SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
