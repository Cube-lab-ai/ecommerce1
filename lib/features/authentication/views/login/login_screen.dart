import 'package:ecom/common/loginin_signup_widget/form_divider_widget.dart';
import 'package:ecom/common/loginin_signup_widget/social_button.dart';
import 'package:ecom/common/styles/spacing_styles.dart';
import 'package:ecom/features/authentication/views/login/widgets/login_form_widget.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
      ),
    );
  }
}
