import 'package:ecom/utils/constatns/sizes.dart';
import 'package:flutter/material.dart';

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
