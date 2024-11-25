import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:locatify/firebase_options.dart';
import 'package:locatify/src/features/Dashboard/Dashboard_content/dashboard_content.dart';
import 'package:locatify/src/features/Dashboard/Notifications/notification_screen.dart';
import 'package:locatify/src/features/Dashboard/finder/document_upload/document_upload_screen.dart';
import 'package:locatify/src/features/Dashboard/finder/person_upload/person_upload_screen.dart';
import 'package:locatify/src/features/Dashboard/seeker/document_search/document_search_screen.dart';
import 'package:locatify/src/features/Dashboard/seeker/person_search/person_search_screen.dart';
import 'package:locatify/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail_screen.dart';
import 'package:locatify/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone_screen.dart';
import 'package:locatify/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:locatify/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:locatify/src/features/authentication/screens/otp_screen/otp_screen.dart';
import 'package:locatify/src/features/authentication/screens/signup_screen/signup_screen.dart';
import 'package:locatify/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:locatify/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:locatify/src/repositey/authentication_repositery/authentication_repositery.dart';
import 'package:locatify/src/utils/theme/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value)=> Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Locatify",
      theme: MDAppTheme.lightTheme,
      home: SplashScreen(),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/onboarding', page: () => OnBoardingScreen()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/signup', page: () => const SignupScreen()),
        GetPage(name: '/forgetPasswordMailScreen', page: () => const ForgetPasswordMailScreen()),
        GetPage(name: '/forgetPasswordPhoneScreen', page: () => const ForgetPasswordPhoneScreen()),
        GetPage(name: '/otpScreen', page: () => const OtpScreen( )),
        GetPage(name: '/dashboard', page: () => const DashboardContent()),
        GetPage(name: '/notifications', page: () => const NotificationScreen()),
        GetPage(name: '/personSearch', page: () => const PersonSearchScreen()),
        GetPage(name: '/personUpload', page: () => const PersonUploadScreen()),
        GetPage(name: '/documentSearch', page: () => const DocumentSearchScreen()),
        GetPage(name: '/documentUpload', page: () => const DocumentUpload()),




      ],
    );
  }
}


