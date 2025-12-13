import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:flutter/material.dart';

class FormDividerWidget extends StatelessWidget {
  const FormDividerWidget({super.key, required this.isdark});

  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            indent: 60,
            thickness: 0.5,
            endIndent: 6,
            color: isdark ? TColors.lightGrey : TColors.darkGrey,
          ),
        ),
        Text(TTexts.orSignInWith),
        Flexible(
          child: Divider(
            indent: 6,
            endIndent: 60,
            thickness: 0.5,

            color: isdark ? TColors.lightGrey : TColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
