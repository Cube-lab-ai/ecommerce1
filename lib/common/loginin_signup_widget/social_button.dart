import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget({super.key, required this.isdark});

  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              style: BorderStyle.solid,
              color: isdark ? TColors.lightGrey : TColors.darkGrey,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: isdark ? TColors.lightGrey : TColors.darkGrey,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              TImages.facebook,
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
