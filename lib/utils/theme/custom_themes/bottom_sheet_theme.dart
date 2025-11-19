import 'package:flutter/material.dart';

// | Property   | Meaning                                 | Example                               |
// | ---------- | --------------------------------------- | ------------------------------------- |
// | `minWidth` | Smallest width the widget can shrink to | Forces widget to not go below this    |
// | `maxWidth` | Largest width the widget can expand to  | Prevents widget from growing too wide |

class TBottomSheetTheme {
  TBottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
