import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:locatify/src/constants/image_strings.dart';
import 'package:locatify/src/constants/sizes.dart';
import 'package:locatify/src/features/authentication/screens/otp_screen/pin_input_widget.dart';

import '../../controllers/otp_controller.dart';
import '../../controllers/phone_auth_controller.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OtpVerificationController otpController = Get.put(OtpVerificationController());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(MdSizes.mdDefaultPadding),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Image.asset(
                  MdImages.mdotpImage,
                  height: size.height * 0.3,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                const Text(
                  "Code Verification",
                  style: TextStyle(fontFamily: "Roboto", fontSize: 30),
                ),
                const Text(
                  "Enter the verification code sent at support@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                PinInputWidget(),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        final phoneAuthController = Get.find<PhoneAuthController>();
                        otpController.verifyOtp(phoneAuthController.verificationId.value);
                        },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(fontSize: 20, fontFamily: "Roboto"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
