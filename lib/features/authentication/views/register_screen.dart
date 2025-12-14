import 'package:ecom/common/loginin_signup_widget/form_divider_widget.dart';
import 'package:ecom/common/loginin_signup_widget/social_button.dart';
import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            SizedBox(height: TSizes.spaceBtwSections),

            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.arrow),
                    ),
                  ),
                ),
                SizedBox(width: TSizes.spaceBtwInputFields),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.icon),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: TSizes.spaceBtwInputFields),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),

            SizedBox(height: TSizes.spaceBtwInputFields),

            TextFormField(decoration: InputDecoration(labelText: 'E-Mail')),
            SizedBox(height: TSizes.spaceBtwInputFields),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwInputFields),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Iconsax.password_check),
              ),
              obscureText: true,
            ),

            SizedBox(height: TSizes.spaceBtwItems),

            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${TTexts.iAgreeTo} ",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),

                      TextSpan(
                        text: TTexts.privacyPolicy,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),

                      TextSpan(
                        text: TTexts.termsOfUse,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: TSizes.spaceBtwSections),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: TColors.buttonPrimary,
                ),
                onPressed: () {},
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
    );
  }
}
