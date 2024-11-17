import "package:get/get.dart";

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  Future startTimer()async{
    await Future.delayed(const Duration(milliseconds: 5000));
Get.offNamed("/onboarding");
  }
}
