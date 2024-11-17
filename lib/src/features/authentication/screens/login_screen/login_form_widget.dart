import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "E-Mail",
              hintText: "E-Mail",
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint_outlined),
                labelText: "Password",
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_sharp))),
          ),
          // SizedBox(height: size.height*0.01,),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.white, // Set overlay color
                ),
                onPressed: () {
                  ForgetPasswordModalBottomSheet.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.lightBlue),
                )),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.offNamed("/homeScreen");
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontFamily: "Roboto", fontSize: 20),
                )),
          )
        ],
      ),
    ));
  }

}


