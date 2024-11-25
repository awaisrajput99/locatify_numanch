import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/constants/image_strings.dart';
import 'package:locatify/src/constants/sizes.dart';
import 'package:locatify/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: size.height*0.15,),
              Image.asset(MdImages.mdWelcome,height: size.height*0.35,),
              SizedBox(height: size.height*0.02,),
              const Column(
                children: [
                  Text(
                    "Welcome to Locatify!",
                    style: TextStyle(fontSize: 25, fontFamily: "Roboto",fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lost, but never forgotten. Find what matters, reconnect with peace.",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: size.height*0.19,),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        child: Text(MdTextStrings.mdLogin.toUpperCase(),
                          style: const TextStyle(
                          fontSize: 20,
                              fontFamily: "Roboto",
                          // fontWeight: FontWeight.bold
                        ),
                        ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/signup");
                        },

                        child: Text(MdTextStrings.mdSignup.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              // fontWeight: FontWeight.w400
                          ),)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
