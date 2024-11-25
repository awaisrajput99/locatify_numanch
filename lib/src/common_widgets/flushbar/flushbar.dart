import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
  void showFlushbar(BuildContext context, String message) {
    Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Colors.red,
      message: message,
      duration: const Duration(seconds: 3),
      icon: const Icon(
        Icons.error_outline,
        color: Colors.white,
      ),
    ).show(context);
  }
