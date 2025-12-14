import 'package:ecom/common/loginin_signup_widget/form_divider_widget.dart';
import 'package:ecom/common/loginin_signup_widget/social_button.dart';
import 'package:ecom/features/authentication/views/register/widgets/sign_up_form_widget.dart';
import 'package:ecom/features/authentication/views/register/widgets/terms_and_condition_checkbox_widget.dart';
import 'package:ecom/features/authentication/views/verify_email/screens/verify_email_screen.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(height: TSizes.spaceBtwSections),

              SignUpFormWidget(),

              SizedBox(height: TSizes.spaceBtwItems),

              TermsAndConditionsCheckBoxWidgets(),

              SizedBox(height: TSizes.spaceBtwSections),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TColors.buttonPrimary,
                  ),
                  onPressed: () {
                    Get.to(() => VerifyEmailScreen());
                  },
                  child: Text(TTexts.createAccount),
                ),
              ),

              SizedBox(height: TSizes.spaceBtwSections),

              FormDividerWidget(isdark: isdark),

              SizedBox(height: TSizes.spaceBtwItems),

              SocialButtonWidget(isdark: isdark),
            ],
          ),
        ),
      ),
    );
  }
}
