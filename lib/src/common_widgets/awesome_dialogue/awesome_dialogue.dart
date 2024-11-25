import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:locatify/src/constants/colors.dart';

void showErrorDialog(BuildContext context, String message) {
  AwesomeDialog(
    context: context,
    dialogType: DialogType.info, // Removes the default icon
    animType: AnimType.scale, // iOS-like scale animation
    dialogBackgroundColor: Colors.white,
    title: null,
    desc: message,
    descTextStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      height: 1.5, // Line height for readability
    ),
    btnOkText: "OK",
    btnOkOnPress: () {},
    btnOkColor: MdAppColors.mdButtonColor,
    customHeader: const Icon(
      Icons.error_outline,
      color: Colors.black,
      size: 50,
    ), // Optional: Add a subtle icon
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    borderSide: BorderSide.none, // Removes default border
    width: MediaQuery.of(context).size.width * 0.8, // Adjust width for iOS-like compactness
    dismissOnTouchOutside: true, // Mimic iOS behavior
  ).show();
}
