import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_widgets/form_header_widget.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({super.key});

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
                  "Please enter your phone below to receive instructions for resetting your password",
                  size: size),
              SizedBox(
                height: size.height * 0.03,
              ),
              Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.numbers_outlined),
                            labelText: "Phone Number",
                            hintText: "Phone Number"),
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
