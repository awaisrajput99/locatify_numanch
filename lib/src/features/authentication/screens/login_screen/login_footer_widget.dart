import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: size.height*0.01,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image.asset(
                MdImages.mdGoogle,
                height: 27,
              ),
              onPressed: () {},
              label: const Text(
                "Sign-in with Google",
                style: TextStyle(color: Colors.black,
                    fontFamily: "Roboto",
                    fontSize: 18
                ),
              )),
        ),
        SizedBox(height: size.height*0.01,),
        TextButton(
            style: TextButton.styleFrom(
                overlayColor: Colors.white
            ),
            onPressed: (){
              Get.toNamed("/signup");
            },
            child: const Text.rich(
              TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                        text: "SignUp",
                        style: TextStyle(
                            color: Colors.lightBlue
                        )
                    )
                  ]
              ),
            )
        )
      ],
    );
  }
}