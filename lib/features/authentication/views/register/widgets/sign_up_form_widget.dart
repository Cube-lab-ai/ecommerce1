import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
