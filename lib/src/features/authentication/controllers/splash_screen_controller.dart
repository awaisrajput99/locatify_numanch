import "package:firebase_auth/firebase_auth.dart";
import "package:get/get.dart";
import "package:shared_preferences/shared_preferences.dart";

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();
  Future<void> navigateBasedOnState() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      // Show onboarding screen if first time
      await prefs.setBool('isFirstTime', false); // Mark as not first time
      Get.offAllNamed("/onboarding");
    } else {
      // Check authentication state
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser == null) {
        Get.offAllNamed("/welcome"); // Show welcome screen
      } else {
        Get.offAllNamed("/dashboard"); // Show dashboard for logged-in users
      }
    }
  }

  // Start navigation logic after a delay
}
