import 'package:ecom/common/styles/spacing_styles.dart';
import 'package:ecom/features/authentication/views/register/widgets/success_screen_widget.dart';
import 'package:flutter/material.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight * 2,
        child: SuccessScreen(theme: theme),
      ),
    );
  }
}
