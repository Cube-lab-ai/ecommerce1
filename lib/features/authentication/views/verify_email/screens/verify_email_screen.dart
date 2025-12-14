// here used headline medium text, label small text, label large text

import 'package:ecom/features/authentication/views/verify_email/screens/account_created_screen.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              image: AssetImage(TImages.verifyIllustration),
              width: THelperFunctions.screenWidth() * 0.6,
              height: THelperFunctions.screenHeight() * 0.4,
            ),
            SizedBox(height: TSizes.spaceBtwSections),

            Text(TTexts.confirmEmail, style: theme.textTheme.headlineMedium),
            SizedBox(height: TSizes.spaceBtwItems),
            Text('support@gmail.com', style: theme.textTheme.labelSmall),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              textAlign: TextAlign.center,
              TTexts.confirmEmailSubTitle,
              style: theme.textTheme.labelLarge,
            ),

            SizedBox(height: TSizes.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => AccountCreatedScreen());
                },
                child: Text(TTexts.tContinue),
              ),
            ),

            SizedBox(height: TSizes.spaceBtwItems),

            TextButton(onPressed: () {}, child: Text(TTexts.resendEmail)),
          ],
        ),
      ),
    );
  }
}
