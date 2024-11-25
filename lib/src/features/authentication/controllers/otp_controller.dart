import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class OtpController extends GetxController{
  static OtpController get instance => Get.find();
RxString code = ''.obs;

  void verifyOtp(String otp, BuildContext context)async {
    var isVerified = await AuthenticationRepository.instance.verifyOtp(otp, context);
    isVerified? Get.offAllNamed("/dashboard") : Get.back();
  }
}