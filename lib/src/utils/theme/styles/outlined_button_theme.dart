import 'package:flutter/material.dart';
import 'package:locatify/src/constants/colors.dart';


class MdOutlinedButtonTheme{
 MdOutlinedButtonTheme._(); // to avoid creating instances

// light theme
  static final mdOutlinedButtonThemeStyle = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        foregroundColor: MdAppColors.mdButtonColor,
        side: const BorderSide(color: MdAppColors.mdButtonColor,width: 2)
    ),
  );

//dark theme

}