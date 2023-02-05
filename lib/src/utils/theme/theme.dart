import 'package:flutter/material.dart';
import 'package:tecttube/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  //Light Theme Configuration
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
  );

  //Dark Theme Configuration
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
  );
}
