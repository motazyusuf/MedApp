import 'package:flutter/material.dart';

import 'color_palette.dart';

class ApplicationThemeManager {
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: ColorPalette.mainBlue,
        onPrimary: Colors.white,
        secondary: Colors.cyan,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: ColorPalette.mainBlue,
        onSurface: Colors.white),
    focusColor: ColorPalette.mainBlue,
    scaffoldBackgroundColor: ColorPalette.backgroundColor,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
          backgroundColor: WidgetStateProperty.all(ColorPalette.mainBlue),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 52))),
    ),
  );
}
