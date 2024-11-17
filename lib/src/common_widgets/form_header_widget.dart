import 'package:flutter/cupertino.dart';


class FormHeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Alignment? alignment;
  final double? height;
  final CrossAxisAlignment? crossAxisAlignment;
  const FormHeaderWidget({
    required this.title,
    required this.subtitle,
    required this.image,
    this.crossAxisAlignment,
    this.height,
    this.alignment,
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: double.infinity,
      alignment: Alignment.center,
      child: Column(

          children:[
            Image.asset(
              image,
              height: height?? size.height * 0.24,
            ),
             Align(
               alignment: alignment?? Alignment.topLeft, // Handle null alignment
              child: Column(
                crossAxisAlignment: crossAxisAlignment?? CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 25,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

          ]
      ),
    );
  }
}