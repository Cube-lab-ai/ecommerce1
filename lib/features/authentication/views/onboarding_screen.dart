import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/device/device_utility.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
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
          SkipButtonWidget(pageController: _pageController),

          // smooth page indigator package
          SmoothPageIndigator(pageController: _pageController),
        ],
      ),
    );
  }
}

class SmoothPageIndigator extends StatelessWidget {
  const SmoothPageIndigator({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
        controller: _pageController,
        count: 3,
      ),
    );
  }
}

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key, required PageController pageController})
    : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: OutlinedButton(
        onPressed: () {
          _pageController.jumpToPage(2);
        },
        child: Text('Skip'),
      ),
    );
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

        ElevatedButton(
          onPressed: () {
            controller.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceIn,
            );
          },
          child: Text('Next'),
        ),
      ],
    );
  }
}
