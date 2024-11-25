import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/authentication/controllers/login_controller.dart';

import '../forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final controller = Get.put(MdLoginController());
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.email,
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
            controller: controller.password,
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
            MdLoginController.instance.loginUser(
                controller.email.text.trim(),
                controller.password.text.trim(),
            context
            );

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


