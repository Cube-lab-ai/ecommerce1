// uses label
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(TImages.verifyIllustration),
          width: THelperFunctions.screenWidth() * 0.6,
          height: THelperFunctions.screenHeight() * 0.4,
        ),
        SizedBox(height: TSizes.spaceBtwSections),

        Text(
          TTexts.yourAccountCreatedTitle,
          style: theme.textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        Text(
          textAlign: TextAlign.center,

          TTexts.yourAccountCreatedSubTitle,
          style: theme.textTheme.labelSmall,
        ),

        SizedBox(height: TSizes.spaceBtwSections),

        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(TTexts.tContinue),
          ),
        ),
      ],
    );
  }
}
