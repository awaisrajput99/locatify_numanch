import 'package:flutter/material.dart';
import 'package:locatify/src/common_widgets/form_header_widget.dart';
import 'package:locatify/src/constants/sizes.dart';
import 'package:locatify/src/features/authentication/screens/signup_screen/signup_form_footer_widget.dart';
import 'package:locatify/src/features/authentication/screens/signup_screen/signup_form_widget.dart';

import '../../../../constants/image_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                height: size.height * 0.05,
              ),
              FormHeaderWidget(
                image: MdImages.mdWelcome,
                  title: "Get On Board!",
                  subtitle: "Create your profile to start your journy",
                  size: size),
              SignupFormWidget(size: size),
              SignupFormFooter(size: size)
            ],
          ),
        ),
      ),
    );
  }
}




