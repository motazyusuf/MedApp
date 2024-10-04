import 'package:flutter/material.dart';

import 'color_palette.dart';

class ApplicationThemeManager {
  static ThemeData theme = ThemeData(
    hintColor: ColorPalette.appBarItemsColor,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: ColorPalette.accentColor,
        onPrimary: Colors.white,
        secondary: Colors.cyan,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: ColorPalette.accentColor,
        onSurface: Colors.white),
    focusColor: ColorPalette.accentColor,
    scaffoldBackgroundColor: ColorPalette.backgroudColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.appBarColor,
      iconTheme: IconThemeData(color: ColorPalette.appBarItemsColor),
    ),
  );
}
