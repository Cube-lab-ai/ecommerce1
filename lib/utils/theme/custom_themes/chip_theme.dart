import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    checkmarkColor: Colors.white,
    selectedColor: const Color.fromRGBO(75, 104, 255, 1),
    disabledColor: Color(0xFFD9D9D9),
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: TextStyle(color: Colors.black, fontFamily: 'Urbanist'),
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    checkmarkColor: Colors.white,
    selectedColor: const Color.fromRGBO(75, 104, 255, 1),
    disabledColor: Color(0xFF4F4F4F),
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    labelStyle: TextStyle(color: Colors.white, fontFamily: 'Urbanist'),
  );
}
