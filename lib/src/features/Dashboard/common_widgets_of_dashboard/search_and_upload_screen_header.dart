import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/dashboard_controller.dart';

class SearchAndUploadScreensHeader extends StatelessWidget {

  const SearchAndUploadScreensHeader({
    super.key,
    required this.dbController,
    required this.size,
    required this.image,
    required this.title,
  });

  final DashboardController dbController;
  final Size size;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Image.asset(image,width: size.width*0.4,),
                Text(title,style: const TextStyle(fontFamily: "Roboto",fontSize: 20),)
              ],
            ))
      ],
    );
  }
}
