import 'dart:ui';

import 'package:flutter/cupertino.dart';

class onBoardingModel{
  final String image;
  final String title;
  final String subtitle;
  final String counterText;
  final Color bgColor;

  onBoardingModel({
    required this.image,
    required this.bgColor,
    required this.counterText,
    required this.subtitle,
    required this.title
});
}