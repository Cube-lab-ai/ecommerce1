import 'package:flutter/material.dart';

// When Flutter builds your ThemeData, any missing TextTheme fields (like bodyMedium) are automatically filled in from defaults based on the brightness.

// | Widget                         | Uses Which TextTheme style                               |
// | ------------------------------ | -------------------------------------------------------- |
// | `Text()`                       | `bodyMedium`                                             |
// | `AppBar.title`                 | `titleLarge` (in Material 3) or `headline6` (Material 2) |
// | `ElevatedButton`, `TextButton` | Uses `labelLarge` or `labelMedium`                       |
// | `TextFormField` label          | `bodySmall` or `labelSmall`                              |
// | `SnackBar`, `Dialog`, etc.     | Varies — generally `bodyMedium` or `titleLarge`          |

// 🧩 1. The TextTheme structure
// TextTheme has named styles like:

// | Style name                                         | Typical use                           |
// | -------------------------------------------------- | ------------------------------------- |
// | `displayLarge`, `displayMedium`, `displaySmall`    | Very large display text (hero titles) |
// | `headlineLarge`, `headlineMedium`, `headlineSmall` | Page titles / Sectioon headers        |
// | `titleLarge`, `titleMedium`, `titleSmall`          | App bar titles, cards, dialogs        |
// | `bodyLarge`, `bodyMedium`, `bodySmall`             | General text, paragraphs              |
// | `labelLarge`, `labelMedium`, `labelSmall`          | Buttons, chips, input labels          |

// 🧱 2. Which widgets automatically use which TextTheme styles
// Here’s a quick reference for the most common Flutter widgets:

// | **Widget**                                       | **Uses this TextTheme style**                        | **Notes**                                  |
// | ------------------------------------------------ | ---------------------------------------------------- | ------------------------------------------ |
// | `Text()`                                         | `bodyMedium`                                         | Default style for plain text               |
// | `AppBar.title`                                   | `titleLarge` (Material 3) / `headline6` (Material 2) | Automatically picks the correct text color |
// | `ElevatedButton`, `TextButton`, `OutlinedButton` | `labelLarge`                                         | For button labels                          |
// | `FloatingActionButton` label                     | `labelLarge`                                         | When using an extended FAB                 |
// | `SnackBar` content                               | `bodyMedium`                                         | Adjusts color for contrast                 |
// | `AlertDialog` title                              | `titleLarge`                                         | Dialog headings                            |
// | `AlertDialog` content                            | `bodyMedium`                                         | Dialog body text                           |
// | `BottomSheet` / `ModalBottomSheet` text          | `bodyMedium` or `titleMedium`                        | Based on placement                         |
// | `TextFormField` / `TextField` label              | `bodySmall` or `labelSmall`                          | For input labels and hints                 |
// | `DrawerHeader` title                             | `titleLarge`                                         | Header text in navigation drawer           |
// | `ListTile.title`                                 | `titleMedium`                                        | Main text in list tile                     |
// | `ListTile.subtitle`                              | `bodyMedium`                                         | Secondary text                             |
// | `Chip` label                                     | `labelLarge` or `labelMedium`                        | Small component labels                     |
// | `Tooltip` text                                   | `labelSmall`                                         | Very small font size                       |
// | `Card` / `Dialog` title                          | `titleLarge`                                         | Prominent heading                          |
// | `CheckboxListTile`, `SwitchListTile` title       | `titleMedium`                                        | Main label                                 |
// | `RadioListTile` title                            | `titleMedium`                                        | Main label                                 |

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    // title
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    // body
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    // label
    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),

    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );

  // for dark text theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    // title
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    // body
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),

    // label
    labelLarge: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );
}
