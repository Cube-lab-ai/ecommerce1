import 'package:ecom/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecom/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecom/utils/theme/custom_themes/check_box_theme.dart';
import 'package:ecom/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecom/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecom/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:ecom/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecom/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    // for text theme we can appbartheme, text theme, icon theme, and many more code become messy so creating seperate file
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    // for text theme we can appbartheme, text theme, icon theme, and many more code become messy so creating seperate file
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.dartOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
  );
}
