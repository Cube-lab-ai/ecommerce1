import 'package:ecom/features/authentication/views/onboarding_screen.dart';
import 'package:ecom/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      home: Homescreen(),
    );
  }
}
