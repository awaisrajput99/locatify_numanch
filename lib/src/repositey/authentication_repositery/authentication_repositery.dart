import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:locatify/src/common_widgets/flushbar/flushbar.dart';
import 'package:locatify/src/common_widgets/toast_messages/toast_message.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:locatify/src/repositey/exceptions/signup_email_password_failure.dart';

import '../exceptions/login_email_password_failure.dart';
import '../exceptions/otp_verification_failure.dart';
import '../exceptions/phone_authentication_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  final Rx<User?> firebaseUser = Rx<User?>(null);
  var verificationId = ''.obs;


  @override
  void onReady() {
    super.onReady();
    firebaseUser.bindStream(_auth.userChanges());
    navigateBasedOnState();
  }

  // Navigation logic with a splash screen delay
  Future<void> navigateBasedOnState() async {
    // Add a delay of 5 seconds for the splash screen
    await Future.delayed(const Duration(seconds: 5));

    final prefs = await SharedPreferences.getInstance();
    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      // First-time user: Show onboarding screen
      await prefs.setBool('isFirstTime', false); // Mark as not first time
      Get.offAllNamed("/onboarding");
    } else {
      // Returning user: Check authentication state
      final firebaseUser = _auth.currentUser;
      if (firebaseUser == null) {
        // User is not logged in: Show welcome screen
        Get.offAllNamed("/welcome");
      } else {
        // User is logged in: Show dashboard
        Get.offAllNamed("/dashboard");
      }
    }
  }

  // Handles user creation with email and password
  Future<void> createUserWithEmailAndPassword(String email, String password,BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      CustomToast.showSuccessfulToast("Account Created Successfully!");
      firebaseUser.value != null ? Get.offAllNamed("/dashboard") : Get.offAllNamed("/welcome");
    } on FirebaseAuthException catch (e) {
      final ex = SignupWithEmailPasswordFailure.code(e.code);
      showFlushbar(context, ex.message);
      throw ex;
    } catch (_) {
      const ex = SignupWithEmailPasswordFailure();
      showFlushbar(context, ex.message);
      throw ex;
    }
  }

  Future<void> loginUserWithEmailAndPassword(String email, String password, BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      CustomToast.showSuccessfulToast("Logged In Successfully!");
      // Redirect to dashboard if successful
      if (firebaseUser.value != null) {
        Get.offAllNamed("/dashboard");
      } else {
        Get.offAllNamed("/welcome");
      }
    } on FirebaseAuthException catch (e) {
      final ex = LoginWithEmailPasswordFailure.code(e.code);

      // Show the exception as a toast
      showFlushbar(context, ex.message);
      throw ex; // Optional: rethrow the exception if needed
    } catch (_) {
      const ex = LoginWithEmailPasswordFailure();
      // Show the default exception as a toast
      showFlushbar(context, ex.message);      throw ex; // Optional: rethrow the exception if needed
    }
  }

  // Logs out the user
  Future<void> logoutUser() async {
    await _auth.signOut();
     CustomToast.showSuccessfulToast("Logged Out!");
    Get.offAllNamed("/welcome"); // Redirect to welcome screen after logout
  }

  //phone verification
  Future<void> phoneAuthentication(String phoneNo, BuildContext context) async {
    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          print('Auto-verification completed');
          await _auth.signInWithCredential(credential);
          Get.offAllNamed('/dashboard');
        },
        verificationFailed: (FirebaseAuthException e) {
          print('Verification failed: ${e.message}');
          final ex = PhoneAuthenticationFailure.code(e.code);
          showFlushbar(context, ex.message); // Ensure context is valid
        },
        codeSent: (verificationId, resendToken) {
          print('Code sent: $verificationId');
          this.verificationId.value = verificationId;
          Get.toNamed('/otpScreen');
        },
        codeAutoRetrievalTimeout: (verificationId) {
          print('Code auto-retrieval timeout');
          this.verificationId.value = verificationId;
        },
      );
    } catch (e) {
      print('Unexpected error: $e');
      const ex = PhoneAuthenticationFailure();
      showFlushbar(context, ex.message);
      throw ex;
    }
  }


  Future<bool> verifyOtp(String otp, BuildContext context) async {
    try {
      // Create AuthCredential using PhoneAuthProvider
      final credential = PhoneAuthProvider.credential(
        verificationId: this.verificationId.value,
        smsCode: otp,
      );

      // Sign in with the generated credential
      final userCredential = await _auth.signInWithCredential(credential);

      // Return true if the user is successfully signed in
      return userCredential.user != null;
    } on FirebaseAuthException catch (e) {
      // Use OtpVerificationFailure to map Firebase error codes
      final ex = OtpVerificationFailure.code(e.code);
      showFlushbar(context, ex.message);
      throw ex;
    } catch (e) {
      // Handle unexpected errors
      const ex = OtpVerificationFailure();
      showFlushbar(context, ex.message);
      throw ex;
    }
  }



}
