import 'package:get/get.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';

class PhoneAuthController extends GetxController {
  static PhoneAuthController get instance => Get.find();

  // Variable to hold the verification ID
  RxString verificationId = ''.obs;

  // Function to initiate phone authentication
  Future<void> initiatePhoneAuth(String phoneNo) async {
    await AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }

  // Function to set the verification ID
  void setVerificationId(String id) {
    verificationId.value = id;
  }
}
