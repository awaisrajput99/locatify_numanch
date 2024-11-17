import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
class MdTextFormFieldTheme{
  MdTextFormFieldTheme._(); // to avoid instances
static final mdInputBorderDecorationTheme = InputDecorationTheme(
    border: const OutlineInputBorder(
        borderSide: BorderSide(
            color: MdAppColors.mdDisabledBorderColor
        )
    ),
    hintStyle: const TextStyle(
        color: Colors.grey
    ),
    floatingLabelStyle: const TextStyle(
        color: Colors.lightBlue,
        fontFamily: "Roboto",
        fontSize: 19
    ),
    fillColor: Colors.grey.withOpacity(0.2),
    filled: true,
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 2.5
        )
    )
);
}