import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/common_widgets/form_header_widget.dart';
import 'package:locatify/src/constants/image_strings.dart';
import 'package:locatify/src/constants/sizes.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              FormHeaderWidget(
                  image: MdImages.mdForgetPassword,
                  alignment: Alignment.center,
                  height: size.height*0.3,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  title: "Forget Password",
                  subtitle:
                      "Please enter your email address below to receive instructions for resetting your password",
                  size: size),
              SizedBox(
                height: size.height * 0.03,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                        labelText: "E-mail",
                        hintText: "Email Address"),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/otpScreen");
                        },
                        child: const Text(
                          "NEXT",
                          style: TextStyle(fontFamily: "Roboto",fontSize: 20),
                        )),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
