import 'package:flutter/material.dart';

class TOutlineButtonTheme {
  TOutlineButtonTheme._();
  static OutlinedButtonThemeData lightOutlineButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          side: const BorderSide(color: Color(0xFFD9D9D9)),
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Urbanist',
          ),
        ),
      );

  static OutlinedButtonThemeData dartOutlineButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Color(0xFFF6F6F6),
          side: const BorderSide(color: Color(0xFFD9D9D9)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
