import 'package:ecom/common/loginin_signup_widget/form_divider_widget.dart';
import 'package:ecom/common/loginin_signup_widget/social_button.dart';
import 'package:ecom/common/styles/spacing_styles.dart';
import 'package:ecom/features/authentication/views/register_screen.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: 150,
                  image: AssetImage(
                    isdark ? TImages.lightAppLogo : TImages.darkAppLogo,
                  ),
                ),
                Text(
                  TTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: TSizes.sm),
                Text(
                  TTexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),

            SizedBox(height: TSizes.spaceBtwSections),

            LoginFormWidget(),

            FormDividerWidget(isdark: isdark),

            SizedBox(height: TSizes.spaceBtwSections),

            SocialButtonWidget(isdark: isdark),
          ],
        ),
      ),
    );
  }
}

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye),
              labelText: TTexts.password,
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          // remember me and forgot password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),

                  Text(TTexts.rememberMe),
                ],
              ),
              TextButton(onPressed: () {}, child: Text(TTexts.forgetPassword)),
            ],
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          SizedBox(
            height: 50,

            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text(TTexts.signIn)),
          ),

          const SizedBox(height: TSizes.spaceBtwItems),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(RegisterScreen());
              },
              child: Text(TTexts.createAccount),
            ),
          ),

          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
