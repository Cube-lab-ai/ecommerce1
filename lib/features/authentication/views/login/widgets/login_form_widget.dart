import 'package:ecom/features/authentication/views/password_configuration/forgot_password_scree.dart';
import 'package:ecom/features/authentication/views/register/screens/register_screen.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
              TextButton(
                onPressed: () {
                  Get.to(ForgotPasswordScreen());
                },
                child: Text(TTexts.forgetPassword),
              ),
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
            height: 60,
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
