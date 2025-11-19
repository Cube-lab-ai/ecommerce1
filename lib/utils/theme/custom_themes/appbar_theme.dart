import 'package:flutter/material.dart';

class TAppBarTheme {
  TAppBarTheme._();

  // making the backkground color to transparent and the appling the elevation no effect

  // when set
  //   backgroundColor: Colors.transparent,
  // elevation: 4,

  // Elevation in Material 3 relies on:
  // Shadow
  // Surface tint effect

  // If the background is transparent:
  // No shadow can be drawn on nothing behind it.
  // No surface tint is visible.

  // Result: visually, it looks flat, even if elevation > 0.
  //   Why AppBar darkens when you increase elevation

  // Material 3 “Surface Tint” system
  // In Material 3, elevation isn’t just shadow, it also slightly tints the surface.
  // The higher the elevation, the more the surfaceTintColor is applied over the background color.
  // This is why your AppBar looks a bit darker (or tinted) as elevation increases.

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
