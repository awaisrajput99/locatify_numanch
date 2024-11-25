import 'package:flutter/material.dart';
import 'package:locatify/src/constants/image_strings.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

@override

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height*0.1),
        child: Center( // Use Center instead of Padding for simpler layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height*0.1,),
              Image.asset(
                  width: 250,
                  height: 200,
                  MdImages.mdSplashImage),
              const SizedBox(height: 20,),
              Image.asset(
                  width: 300,
                  MdImages.mdLogo),
            ],
          ),
        ),
      ),
    );
  }
}


