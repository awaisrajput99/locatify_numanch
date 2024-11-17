import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
class MdElevatedButtonTheme{
  MdElevatedButtonTheme._();
  static final MdElevatedButtonThemeStyle = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        foregroundColor: Colors.white,
        backgroundColor: MdAppColors.mdButtonColor,
        side: const BorderSide(color: MdAppColors.mdButtonColor,width: 2)
    ),
  );
}