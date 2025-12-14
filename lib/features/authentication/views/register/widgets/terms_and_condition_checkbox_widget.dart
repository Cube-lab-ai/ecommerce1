import 'package:ecom/utils/constatns/colors.dart';
import 'package:ecom/utils/constatns/text_strings.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckBoxWidgets extends StatelessWidget {
  const TermsAndConditionsCheckBoxWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.apply(color: TColors.primary),
                ),
                TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.apply(color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
