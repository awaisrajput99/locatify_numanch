import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/features/authentication/controllers/signup_controller.dart';

import '../../controllers/phone_auth_controller.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final PhoneAuthController phoneAuthController = Get.put(PhoneAuthController());

    final controller = Get.put(MdSignupController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Full Name",
                ),
                validator: controller.validateFullName,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: "Email Address",
                ),
                validator: controller.validateEmail,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: controller.phone,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.numbers_outlined),
                  labelText: "Phone Number",
                ),
                validator: controller.validatePhone,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint_outlined),
                  labelText: "Create Password",
                ),
                validator: controller.validatePassword,
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFormField(
                controller: controller.confirmPassword,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint_outlined),
                  labelText: "Confirm Password",
                ),
                validator: controller.validateConfirmPassword,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
             /*         if (_formKey.currentState!.validate()) {
                        MdSignupController.instance.registerUser(
                            controller.email.text.trim(),
                            controller.password.text.trim(),
                        context
                        );
                      }*/
                      phoneAuthController.initiatePhoneAuth(controller.phone.text);
                    },
                    child: const Text(
                      "SIGNUP",
                      style: TextStyle(fontFamily: "Roboto", fontSize: 20),
                    )),
              )
            ],
          )),
    );
  }
}
