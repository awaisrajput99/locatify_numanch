import 'package:flutter/material.dart';
import 'package:locatify/src/utils/theme/styles/elevated_button_theme.dart';
import 'package:locatify/src/utils/theme/styles/outlined_button_theme.dart';
import 'package:locatify/src/utils/theme/styles/textformfield_theme.dart';

class MDAppTheme{
  MDAppTheme._(); //so no instance can be created
  static ThemeData lightTheme = ThemeData(
    brightness:  Brightness.light,
    fontFamily: "Comfortaa",
    scaffoldBackgroundColor: Colors.white,
      outlinedButtonTheme: MdOutlinedButtonTheme.mdOutlinedButtonThemeStyle,
    elevatedButtonTheme: MdElevatedButtonTheme.MdElevatedButtonThemeStyle,
    inputDecorationTheme: MdTextFormFieldTheme.mdInputBorderDecorationTheme,
  );
/*  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      fontFamily: "Comfortaa"
  );*/
}