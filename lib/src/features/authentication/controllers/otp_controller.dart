import 'package:get/get.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class OtpVerificationController extends GetxController {
  static OtpVerificationController get instance => Get.find();

  // Variable for SMS code entered by the user
  RxString smsCode = ''.obs;

  // Function to handle OTP verification
  Future<void> verifyOtp(String verificationId) async {
    await AuthenticationRepository.instance.otpVerification(verificationId, smsCode.value);
  }

  // Function to update SMS code
  void updateSmsCode(String code) {
    smsCode.value = code;
  }
}
